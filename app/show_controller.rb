def highest_rating
  # return the highest value in the ratings column
  Show.maximum(:rating)
end

def most_popular_show
  # return the show with the highest rating
  Show.where("name = maximum[:rating]")
end

def lowest_rating
  #returns the lowest value in the ratings column
  Show.minimum(:rating)
end

def least_popular_show
  # returns the show with the lowest rating
  Show.where("name = minimum[:rating]")
end

def ratings_sum
  #returns the sum of all ratings_sum
  Show.sum(:rating)
end

def popular_shows
  #returns an array of all the shows that have a rating greater than 5
  # use where Active Record method
  Show.where("rating > ?", 5)
end

def shows_by_alphabetical_order
  # returns an array of all the shows sorted by alphabetical order according o names
  # hint: use order active record method
end
