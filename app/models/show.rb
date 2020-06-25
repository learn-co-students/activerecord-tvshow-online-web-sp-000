class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    top = Show.maximum(:rating)
    Show.find_by rating: top
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    low = Show.minimum(:rating)
    Show.find_by rating: low
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end
