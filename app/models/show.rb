require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating # returns the highest value in the ratings column
        self.maximum('rating')
    end

    def self.most_popular_show # returns the show with the highest rating
        self.find_by! rating: '10'
        #binding.pry
    end

    def self.lowest_rating # returns the lowest value in the ratings column
        self.minimum('rating')
    end

    def self.least_popular_show # returns the show with the lowest rating
        self.find_by! rating: '2'
    end

    def self.ratings_sum # returns the sum of all the ratings
        self.sum(:rating)
    end

    def self.popular_shows # returns an array of all the shows that have a rating > 5
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order # returns an array of all of the shows sorted by alphabetical order
        self.order(:name)
    end

end