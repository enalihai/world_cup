require 'rails_helper'

RSpec.describe 'Leagues Teams Index' do
  before :each do
    @uefa = League.create!(name: "UEFA")
    @belgium = @uefa.teams.create!(country: "Belgium", qualified: true, rank: 1)
    @germany = @uefa.teams.create!(country: "Germany", qualified: true, rank: 11)
    @italy = @uefa.teams.create!(country: "Italy", qualified: false, rank: 6)
    @denmark = @uefa.teams.create!(country: "Denmark", qualified: true, rank: 9)
  end

  it 'shows all the teams of a league' do
    visit "/leagues/#{@uefa.id}/teams"

    expect(page).to have_content(@belgium.country)
    expect(page).to have_content(@germany.country)
  end

  it 'links to each teams show page' do
    visit "/leagues/#{@uefa.id}/teams"

    click_on @belgium.country

    expect(current_path).to eq("/teams/#{@belgium.id}")
  end

  it 'shows the average FIFA rank for a league' do
    visit "/leagues/#{@uefa.id}/teams"

    expect(page).to have_content("Average FIFA Rank for UEFA: 6.75")
  end
end
