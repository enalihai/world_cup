class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end

  def show
    @league = League.find(params[:id])
  end

  def new
  end

  def create
    league = League.create(league_params)
    redirect_to "/leagues"
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    league = League.find(params[:id])
    league.update(league_params)
    redirect_to "/leagues"
  end
private
  def league_params
    params.permit(:name)
  end
end
