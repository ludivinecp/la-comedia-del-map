class OngoingPlay < ActiveRecord::Base
  belongs_to :play
  belongs_to :theater
end

