class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
    # binding.pry
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = ?", self.lowest_rating)[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(:name => :asc)
  end

end
