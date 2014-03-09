class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def unclaimed
    @games = Game.unclaimed
    render :index
  end

  def update
    @game = Game.find(params[:id])
    @game.attendee = Attendee.find(params[:game][:attendee_id])
    @game.save
  end
end
