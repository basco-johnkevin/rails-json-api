class LeagueResource < JSONAPI::Resource
  attributes :name
  has_one :sport
  has_one :user
  has_many :teams

  def self.create(context)
    LeagueResource.new(context[:current_user].leagues.new, nil)
  end

  def self.creatable_fields(_context = nil)
    super - [:user]
  end
end
