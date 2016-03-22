class SportValidator < ActiveModel::Validator
  def validate(record)
    if record.sport_id.blank?
      record.errors.add :sport, "can't be blank"
    else
      # check if sport exists
      sport = Sport.find_by(id: record.sport_id)
      if sport.nil?
        record.errors.add :sport, "doesn't exist"
      end
    end
  end
end

class League < ActiveRecord::Base
  belongs_to :sport
  belongs_to :user
  has_many :teams

  validates :name, presence: true
  validates :name, uniqueness: true
  validates_with SportValidator
end
