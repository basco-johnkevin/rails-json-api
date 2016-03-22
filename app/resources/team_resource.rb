class TeamResource < JSONAPI::Resource
  attributes :name
  has_one :league
end
