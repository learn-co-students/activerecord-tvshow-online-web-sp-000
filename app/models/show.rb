    class Show < ActiveRecord::Base
      has many :shows
end 

def highest_rating
  puts show.maximum(:rating)
end
