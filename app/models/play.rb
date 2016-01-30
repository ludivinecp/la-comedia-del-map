class Play < ActiveRecord::Base
  has_many :actors
  belongs_to :theater
end
