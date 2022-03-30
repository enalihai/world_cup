class AddLeagueToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :league, foreign_key: true
  end
end
