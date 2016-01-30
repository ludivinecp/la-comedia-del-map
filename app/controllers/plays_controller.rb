class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    @play_actor = @play.actors
  end
end
