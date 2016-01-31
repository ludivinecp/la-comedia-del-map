class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    # @ongoing = OngoingPlay.all
    # @plays = @ongoing.where(plays_id = @play) 
    @ticket = Ticket.new
  end
end
