class PlaysController < ApplicationController
  def show
    @play = Play.find(params[:id])
    # @ongoing = OngoingPlay.all
    # @plays = @ongoing.where(plays_id = @play) 
    @ticket = Ticket.new
  end
 
  def new
    @play = Play.new
  end

  def edit
    @play = Play.find(params[:id])
  end


  def create
    @play = Play.new(play_params)
      if @play.save
        redirect_to play_path
      else
      render :edit
      end
  end

  def update
    @play = Play.find(params[:id])
    if @play.update(play_params)
      redirect_to play_path
    else
    render :edit
    end
  end

  def destroy
    @play.destroy
    respond_to do |format|
      format.html { redirect_to plays_path }
      format.json { head :no_content }
    end
  end

  def play_params
      params.require(:play).permit(:title, :date_start, :date_end, :synopsys, :theater_id, :base_price)
    end
end
