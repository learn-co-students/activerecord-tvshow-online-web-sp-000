def highest_rating
    Show.maximum(:rating) = Show.highest_rating
    Show.highest_rating
end