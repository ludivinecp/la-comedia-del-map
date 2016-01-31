class Theater < ActiveRecord::Base
  has_many :plays, through: :ongoing_plays
end
