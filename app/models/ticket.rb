class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :play
  before_create :remaining_places
  validates_presence_of :number_of_people
  validates_presence_of :date
  validates_presence_of :hour

 

  def remaining_places
    play = Play.find(self.plays_id)
    count = play.theater.number_of_places
    count -= self.number_of_people
        if count > 0
          true
        else
          false
        end
  end

  def final_price
    play = Play.find(self.plays_id)
    if self.number_of_people >= 10
      self.group_price
    else
    (play.base_price  * self.number_of_people) / 100
    end
  end

  def group_price
    play = Play.find(self.plays_id)
    total = play.base_price * self.number_of_people / 100
    total - (total * 0.10) 
   
  end

  def mailer_booking_confirmation
    BookingMailer.new_booking(self).deliver_now
  end 

end
