require 'rails_helper'

RSpec.describe League do
  it {should have_many :teams}

  describe 'instance methods' do
    describe '#average_fifa_rank' do
      before :each do
        @uefa = League.create!(name: "UEFA")
        @belgium = @uefa.teams.create!(country: "Belgium", qualified: true, rank: 1)
        @germany = @uefa.teams.create!(country: "Germany", qualified: true, rank: 11)
        @italy = @uefa.teams.create!(country: "Italy", qualified: false, rank: 6)
        @denmark = @uefa.teams.create!(country: "Denmark", qualified: true, rank: 9)
      end

      it 'shows the average fifa rank' do
        expect(@uefa.average_fifa_rank).to eq(6.75)
      end
    end
  end
end
