class Show < ActiveRecord::Base
  attr_accessor :name, :network, :day, :rating, :season

  def Show::highest_rating
    Show.maximum(:highest_rating).value
  end

  def Show::most_popular_show
    Show.maximum(:rating)
  end

  def Show::lowest_rating
    Show.minimum(:rating).value
  end

  def Show::least_popular_show
    Show.minimum(:rating)
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    Show.where(":rating > ?" , 5)
  end

  def shows_by_alphabetical_order
    Show.order(:name)
  end

end
