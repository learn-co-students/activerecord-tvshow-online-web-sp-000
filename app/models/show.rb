# define show class
class Show < ActiveRecord::Base
# inherits from ActiveRecord::Base
  def self.highest_rating
    # return the highest value in the ratings column
    Show.maximum(:rating)
  end

  def self.most_popular_show
    # return the show with the highest rating
    Show.where(rating: highest_rating).first
  end

  def self.lowest_rating
    #returns the lowest value in the ratings column
    Show.minimum(:rating)
  end

  def self.least_popular_show
    # returns the show with the lowest rating
    Show.where(rating: lowest_rating).first
  end

  def self.ratings_sum
    #returns the sum of all ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    #returns an array of all the shows that have a rating greater than 5
    # use where Active Record method
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    # returns an array of all the shows sorted by alphabetical order according o names
    # hint: use order active record method
    Show.order(:name)
  end

end
