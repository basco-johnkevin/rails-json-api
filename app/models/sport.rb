class Sport < ActiveRecord::Base
  has_many :leagues

  validates :name, presence: true
  validates :name, uniqueness: true
end
