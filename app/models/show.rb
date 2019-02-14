class Show < ActiveRecord::Base
  class << self
    def highest_rating
      most_popular_show.rating
    end

    def most_popular_show
      order("rating DESC").first
    end

    def lowest_rating
      least_popular_show.rating
    end

    def least_popular_show
      order("rating ASC").first
    end

    def ratings_sum
      sum('rating')
    end

    def popular_shows
      where('rating > 5')
    end

    def shows_by_alphabetical_order
      order('name')
    end
  end
end    
