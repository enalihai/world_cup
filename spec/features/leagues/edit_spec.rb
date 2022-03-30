require 'rails_helper'

RSpec.describe 'the league edit' do
  it 'links to the edit page' do
    league = League.create!(name: 'MLS')

    visit '/leagues'
    # save_and_open_page
    click_button "Edit #{league.name}"

    expect(current_path).to eq("/leagues/#{league.id}/edit")
  end

  it 'can edit the league' do
    league = League.create!(name: 'MSL')

    visit "/leagues"

    expect(page).to have_content('MSL')

    click_button 'Edit MSL'

    fill_in 'Name', with: 'MLS'
    click_button 'Update League'

    expect(current_path).to eq("/leagues")
    expect(page).to have_content('MLS')
  end
end
