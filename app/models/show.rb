class Show < ActiveRecord::Base
    def Show::highest_rating
      self.maximum(:rating)
    end
    def Show::most_popular_show
      self.find_by(rating: highest_rating)
    end
    def Show::lowest_rating
      self.minimum(:rating)
    end
    def self.least_popular_show
      self.find_by(rating: lowest_rating)
    end
    def Show::ratings_sum
      self.sum(:rating)
    end
    def Show::popular_shows
      self.where("rating > 5")
    end
    def Show::shows_by_alphabetical_order
      self.order(:name)
    end
  end