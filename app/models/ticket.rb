class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :play
  # before_create :remaining_places
  validates_presence_of :number_of_people
  validates_presence_of :date
  validates_presence_of :hour

  # def remaining_places
  #   count = play.theater.number_of_places
  #   self.each do |ticket|
  #     count -= self.number_of_people
  #       if count > 0
  #         true
  #       else
  #         false
  #       end
  #   end
  # end
end
