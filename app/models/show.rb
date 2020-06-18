require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating
        binding.pry
        
        Show.maximum(:rating)
    end
end