require 'rails_helper'

RSpec.describe 'the League creation' do
  it 'links to the new page from league index' do
    visit '/leagues'
    # save_and_open_page
    click_link('New League')
    expect(current_path).to eq('/leagues/new')
  end
end
