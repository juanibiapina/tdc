get "/fingerprints/:uuid" do
  respond FingerprintRequest::Find
end
