require 'rails_helper'

RSpec.describe 'the league edit' do
  it 'links to the edit page' do
    league = League.create!(name: 'MLS')

    visit '/leagues'
    # save_and_open_page
    click_button "Edit #{league.name}"

    expect(current_path).to eq("/leagues/#{league.id}/edit")
  end
end
