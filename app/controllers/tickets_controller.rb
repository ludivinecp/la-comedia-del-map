class TicketsController < ApplicationController
  before_action :authenticate_user!
  
  def new
  end

  def create
    @ticket = current_user.tickets.build(ticket_params) 
      if @ticket.save
        redirect_to ticket_path(@ticket)
      else
        redirect_to play_path, notice: "Vous avez omis un champ ou la pièce est complète"
      end
  end

  def show
    @ticket = Ticket.find(params[:id])
    @booking_play = Play.find(@ticket.plays_id)
  end
 
 private
  def ticket_params
    params.require(:ticket).permit(:plays_id, :hour, :date, :number_of_people)
  end
end
