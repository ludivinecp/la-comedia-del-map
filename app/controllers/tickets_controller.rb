class TicketsController < ApplicationController
  def new
  end

  def create
     @ticket = current_user.tickets.build(ticket_params) 
    if @ticket.save
      redirect_to root_path
    else
      redirect_to play_path, notice: "Vous avez omis un champ ou la pièce est complète"
    end
  end
 
 private
  def ticket_params
    params.require(:ticket).permit(:play_id, :hour, :date, :number_of_people)
  end
end
