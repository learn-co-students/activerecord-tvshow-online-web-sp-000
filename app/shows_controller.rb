
def ratings_sum
  binding.pry
end

def highest_rating
  Show.maximum(:rating)
end