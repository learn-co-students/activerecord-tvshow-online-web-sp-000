class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end 
    # this method should return the highest value in the ratings column. 
    # _hint_: if there is a `minimum` Active Record method, might there be a `maximum` method?
    
    def self.most_popular_show
        Show.all.order(rating: :desc).first
    end 
    # this method should return the show with the highest rating. 
    # _hint_: use the `highest_rating` method as a helper method.


    def self.lowest_rating
        Show.minimum(:rating)
    end 
    # returns the lowest value in the ratings column.



    def self.least_popular_show
        Show.all.order(rating: :desc).last
      
    end 
    # returns the show with the lowest rating.


    def self.ratings_sum
        Show.sum(:rating)
    end 
    # returns the sum of all of the ratings.


    def self.popular_shows
        Show.where("rating > 5")
    end 
    # returns an array of all of the shows that have a rating greater than `5`. 
    # _hint_: use the `where` Active Record method.


    def self.shows_by_alphabetical_order
        Show.order(:name)
    end 
    # returns an array of all of the shows sorted by alphabetical order according to their names
    # . _hint_: use the `order` ActiveRecord method.


end 