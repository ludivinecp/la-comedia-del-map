class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :play
  before_create :remaining_places

  def remaining_places
    count = theater.number_of_places
    self.each do |ticket|
      count -= self.number_of_people
        if count > 0
          true
        else
          false
        end
    end
  end
end
