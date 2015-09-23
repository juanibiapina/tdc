class FingerprintRequest::Find < Operation
  def perform
    FingerprintRequest.find_by(uuid: params[:uuid])
  end
end
