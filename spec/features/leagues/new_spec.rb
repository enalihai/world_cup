require 'rails_helper'

RSpec.describe 'the League creation' do
  it 'links to the new page from league index' do
    visit '/leagues'
    # save_and_open_page
    click_link('New League')
    expect(current_path).to eq('/leagues/new')
  end

  it 'can create a new leage' do
    visit '/leagues/new'

    fill_in('Name', with: 'MLS')
    click_button('Create League')

    expect(current_path).to eq("/leagues")
    expect(page).to have_content("MLS")
  end
end
