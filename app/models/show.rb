class Show < ActiveRecord::Base
  
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    # this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
  self.where("rating = ?", self.highest_rating).first
end

  def self.lowest_rating
    self.minimum(:rating)
    # lowest_rating: returns the lowest value in the ratings column.
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
    # least_popular_show: returns the show with the lowest rating.
  end

  def self.ratings_sum
    self.sum(:rating)
    #  returns the sum of all of the ratings.
  end

  def self.popular_shows
    self.where("rating > 5")
    #  returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
  end

  def self.shows_by_alphabetical_order
    #  returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
  self.order(:name)
end
end