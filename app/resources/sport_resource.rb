class SportResource < JSONAPI::Resource
  attributes :name
  has_many :leagues
end
