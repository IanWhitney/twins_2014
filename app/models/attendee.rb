class Attendee < ActiveRecord::Base
  has_many :games
end
