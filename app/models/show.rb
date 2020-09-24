class Show < ActiveRecord::Base 
  
  def Show::highest_rating 
    Show.maximum(:rating)
  end 
  
  def Show::most_popular_show 
    Show.order(rating: :desc).limit(1).first
  end 
  
  def Show::lowest_rating 
    Show.minimum(:rating)
    # returns only the rating, not the Show object
  end 
  
  def Show::least_popular_show 
    Show.order(rating: :asc).limit(1).first
  end  
  
  def Show::ratings_sum 
    Show.sum(:rating)
  end 
  
  def Show::popular_shows 
    Show.where("rating > ?", 5)
  end 
  
  def Show::shows_by_alphabetical_order 
    Show.order(name: :asc)
  end 
  
end