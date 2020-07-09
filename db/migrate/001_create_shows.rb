class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
      t.string :season
    end
  end

  def Show::highest_rating
  end

  def Show::most_popular_show
  end

  def Show::lowest_rating
  end

  def Show::least_popular_show
  end

  def Show::ratings_sum
  end

  def Show::popular_shows
  end

  def Show::shows_by_alphabetical_order
  end
end
