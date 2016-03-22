class LeagueValidator < ActiveModel::Validator
  def validate(record)

    if record.league_id.blank?
      record.errors.add :league, "can't be blank"
    else
      # check if league exists
      league = League.find_by(id: record.league_id)
      if league.nil?
        record.errors.add :league, "doesn't exist"
      end

      # TODO: check if the current user is the owner of the league
    end
  end
end

class Team < ActiveRecord::Base
  belongs_to :league

  validates :name, presence: true
  validates :league_id, presence: true
  validates_with LeagueValidator

end
