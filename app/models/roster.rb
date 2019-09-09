class Roster < ApplicationRecord
  belongs_to :user
  validates :name, :season, :league_size, :scoring_format, presence: true
end
