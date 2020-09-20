class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum("rating")
        #this return the maximum ratiing not the row or instance
    end


    def self.most_popular_show
        #return the show instance
        self.find_by(rating: self.highest_rating)
        #self.where(rating: self.highest_rating).take
        #for some reason if u want to use where, u need the "take" at the end
        #it seems if u find many things the take is not needed in where
    end

    def self.lowest_rating
        self.minimum("rating")
    end

    def self.least_popular_show
        self.find_by(rating: self.lowest_rating)
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > 5")
    end 

    def self.shows_by_alphabetical_order
        self.order("name ASC")
    end

end
