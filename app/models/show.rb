class Show < ActiveRecord::Base
    def self.highest_rating #should return the highest value in the ratings
        self.maximum(:rating)
    end
    
    def self.most_popular_show #this method should return the show with the highest rating. use the highest_rating method as a helper method.
        self.where("rating = ?", self.highest_rating).first
    end
    
    def self.lowest_rating #If you want to find the minimum value of a field in your table you can call the minimum method
        # on the class that relates to the table. 
        self.minimum(:rating)
    end
    
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end
    
    def self.ratings_sum
        self.sum(:rating)
    end
      
    def self.popular_shows #returns an array of all of the shows that have a rating
        #greater than `5`. _hint_: use the `where` Active Record method.
        self.where("rating > ?", 5)
    end
    
    def self.shows_by_alphabetical_order #returns an array of all of the shows sorted by
        #alphabetical order according to their names. _hint_: use the `order` ActiveRecord method.
        self.order(:name)
    end
end