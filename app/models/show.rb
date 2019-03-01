class Show < ActiveRecord::Base 
  
  def Show.highest_rating 
    Show.maximum(:rating)
  end 
  
  def Show.most_popular_show
    rate = Show.highest_rating
    Show.find_by(rating: rate)
  end 
  
  def Show.lowest_rating
    Show.minimum(:rating)
  end 
  
  def Show.least_popular_show
    rate = Show.lowest_rating
    Show.find_by(rating: rate)
  end 
  
  def Show.ratings_sum
    Show.all.sum(:rating)
  end 
  
  def Show.popular_shows
    Show.where("rating > 5")
  end 
  
  def Show.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end