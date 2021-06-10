class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
end
end
