def highest_rating
  Movie.where("rating").maximum
end