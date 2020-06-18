require 'pry'
class Show < ActiveRecord::Base
    def highest_rating
        binding.pry
        
        Show.maximum(:rating)
    end
end