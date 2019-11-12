class Show < ActiveRecord::Base
  def self.highest_rating
    return Show.all.order(rating: :desc).first.rating
  end
  def self.most_popular_show
    return Show.all.order(rating: :desc).first
  end
  def self.lowest_rating
    return Show.all.order(rating: :desc).last.rating
  end
  def self.least_popular_show
    return Show.all.order(rating: :desc).last
  end
  def self.ratings_sum
    return Show.all.sum(:rating)
  end
  def self.popular_shows
    shows = []
    Show.where(rating: 5..10).each do |show|
      shows << show
    end
    return shows
  end
  def self.shows_by_alphabetical_order
    shows = []
    Show.all.order(name: :asc).each do |show|
      shows << show
    end
    return shows
  end
end
