class Fingerprint::Job < Operation
  def validate
    requires :fingerprint
  end

  def perform
    fingerprint = params[:fingerprint]

    video = run(Video::Download, remote_path: fingerprint.path)

    run Fingerprint::Netresult, fingerprint: fingerprint, video: video
    run Fingerprint::Youtube, fingerprint: fingerprint, video: video
  end
end
