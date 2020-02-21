class Show < ActiveRecord::Base 

  def self.highest_rating 
    Show.maximum(:rating)
  end 
    
  def self.most_popular_show 
    show = Show.all.where("rating = ?", highest_rating)
    show[0] 
  end 

end 