class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    # binding.pry
    @team = Team.find(params[:id])
  end
end
