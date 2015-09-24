class Fingerprint
  include Mongoid::Document
  include Mongoid::Uuid

  field :video_id, type: String
  field :title, type: String
  field :description, type: String
  field :exhibition_date, type: DateTime

  field :path, type: String

  embeds_one :program
  embeds_one :channel
end
