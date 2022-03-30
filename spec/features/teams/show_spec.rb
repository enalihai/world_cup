require 'rails_helper'

RSpec.describe 'the Teams show page' do
  it 'displays the team country' do
    league = League.create!(name: "UEFA")
    team = league.teams.create!(country: "Belgium", qualified: true, rank: 1)
    team_2 = league.teams.create!(country: "Brazil", qualified: true, rank: 2)

    visit "/teams/#{team.id}"

    expect(page).to have_content(team.country)
    expect(page).to have_no_content(team_2.country)
  end

  it 'displays the name of the league for the country' do
    league = League.create!(name: "UEFA")
    team = league.teams.create!(country: "Belgium", qualified: true, rank: 1)
    team_2 = league.teams.create!(country: "Brazil", qualified: true, rank: 2)

    visit "/teams/#{team.id}"
    # save_and_open_page
    expect(page).to have_content(league.name)
  end
end
