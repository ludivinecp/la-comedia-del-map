class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    @ticket = Ticket.new

  end
end
