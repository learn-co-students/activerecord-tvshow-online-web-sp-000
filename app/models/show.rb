class Show < ActiveRecord::Base
	def self.highest_rating
		self.maximum(:rating)
	end

	def self.most_popular_show
		self.order(:rating).last
	end

	def self.lowest_rating
		self.minimum(:rating)
	end

	def self.least_popular_show
		self.order(:rating).first
	end

	def self.ratings_sum
		self.sum(:rating)
	end
  # returns an array of all of the shows with a rating above 5 (FAILED - 1)
  def self.popular_shows
		self.where('rating > 5')
	end

	def self.shows_by_alphabetical_order
		self.order(name: :asc)
	end
end