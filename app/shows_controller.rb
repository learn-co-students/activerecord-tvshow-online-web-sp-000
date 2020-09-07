def highest_rating
    Movie.maximum(:rating)
end