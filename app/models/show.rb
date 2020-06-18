require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating        
        Show.maximum(:rating)
    end
    
    def self.most_popular_show
        rate = self.highest_rating
        popular = Show.find_by rating: rate
        popular
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        least_popular = self.find_by rating: self.lowest_rating
        least_popular
    end

    def self.ratings_sum
        sum = self.sum(:rating)
        sum
    end

    def self.popular_shows
        shows = self.where('rating > 5')
        shows
    end

    def self.shows_by_alphabetical_order
        self.order('name asc')
    end
    binding.pry
end