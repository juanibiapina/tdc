class FingerprintRequest::Create < Operation
  def perform
    fingerprint = FingerprintRequest.create!(params)

    FingerprintJob.perform_later(fingerprint.to_param)

    fingerprint
  end
end
