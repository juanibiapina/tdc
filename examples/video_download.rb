class Video::Download < Operation
  def validate
    requires :remote_path
  end

  def perform
    remote_path = params[:remote_path]
    ext = File.extname(remote_path)
    local_path = LocalStorage.make_tmp_filename(ext)

    RemoteStorage::Service.new(provider).with_session do |session|
      session.fetch(remote_path, local_path)
    end

    local_path
  end
end
