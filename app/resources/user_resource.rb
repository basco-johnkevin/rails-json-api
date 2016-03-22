class UserResource < JSONAPI::Resource
  attribute :name
  attribute :email
  attribute :password

  has_many :leagues
end
