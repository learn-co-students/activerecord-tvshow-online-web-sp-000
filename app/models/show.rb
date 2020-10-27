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

end