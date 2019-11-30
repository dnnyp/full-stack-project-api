class Roster < ApplicationRecord
  belongs_to :user
  has_many :feedbacks, dependent: :destroy
  validates :name, :season, :league_size, :scoring_format, presence: true
end
