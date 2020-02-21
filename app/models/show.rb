class Show < ActiveRecord::Base 

  def self.highest_rating 
    Show.maximum(:rating)
  end 
    
  def self.most_popular_show 
    show = Show.all.where("rating = ?", highest_rating)
    show[0] 
  end 
  
  def self.lowest_rating
    Show.minimum(:rating)
  end 
  
  def self.least_popular_show 
    show = Show.all.where("rating = ?", lowest_rating)
    show[0] 
  end 
  
  def self.ratings_sum 
    Show.all.sum(:rating)
  end 
  
  def self.popular_shows 
    shows = [] 
    Show.all.where("rating > 5").each do |show|
      shows << show 
    end 
    shows 
  end 

end 












