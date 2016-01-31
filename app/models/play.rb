class Play < ActiveRecord::Base
  has_many :actors
  has_many :tickets
  belongs_to :theater
  has_many :ongoing_plays
  

end
