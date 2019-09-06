class RosterSerializer < ActiveModel::Serializer
  attributes :id, :name, :season, :league_size, :scoring_format
end
