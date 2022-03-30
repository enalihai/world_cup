class League < ApplicationRecord
  has_many :teams

  def average_fifa_rank
    self.teams.average(:rank)
  end
end
