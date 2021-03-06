class TicketsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @ticket = Ticket.find(params[:id])
    @booking_play = Play.find(@ticket.plays_id)
    @price = @ticket.final_price
  end

  def new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = current_user.tickets.build(ticket_params) 
      if @ticket.save
        redirect_to ticket_path(@ticket)
        @ticket.mailer_booking_confirmation
      else
        redirect_to :back, notice: "Vous avez omis un champ"
      end
  end

   def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(ticket_params)
      redirect_to root_path
    else
    render :edit
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end


 
 private
  def ticket_params
    params.require(:ticket).permit(:plays_id, :hour, :date, :number_of_people)
  end
end


