class Show < ActiveRecord::Base

    #returns highest rating of all the TV shows
    def self.highest_rating
        Show.maximum('rating')
    end

    #returns the tv show with the highest rating
    def self.most_popular_show
        show = Show.maximum('rating')
        highest_show = Show.find_by(rating: show)
    end

    #returns the lowest rating of all TV shows
    def self.lowest_rating
        Show.minimum('rating')
    end

    #returns the tv show with the lowest rating
    def self.least_popular_show
        show = Show.find_by(rating: Show.lowest_rating)
    end

    #returns sum of all ratings 
    def self.ratings_sum
        Show.sum(:rating)
    end

    #returns array of all shows with rating > 5
    def self.popular_shows
        Show.where("rating > 5")
    end

    #returns array of all shows in alphabetical order
    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end