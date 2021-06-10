class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        Show.find_by(rating: highest_rating)
    end

    def self.lowest_rating 
        # returns the lowest rating of all the TV shows
        Show.minimum(:rating)
    end

    def self.least_popular_show 
        # returns the tv show with the lowest rating
        Show.find_by(rating: lowest_rating)
    end

    def self.ratings_sum
        # returns the sum of all the ratings of all the tv shows
        Show.sum(:rating)

    end

    def self.popular_shows
        # returns an array of all of the shows with a rating above 5
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        # returns an array of all of the shows, listed in alphabetical order
        Show.order(:name)
    end

end