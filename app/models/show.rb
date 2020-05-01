class Show < ActiveRecord::Base
    
    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        best_rating = self.highest_rating
        Show.find_by(rating: best_rating)
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        worst_rating = self.lowest_rating
        Show.find_by(rating: worst_rating)
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end