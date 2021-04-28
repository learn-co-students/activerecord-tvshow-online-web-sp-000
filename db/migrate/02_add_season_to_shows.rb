class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change
        add_column :shows, :season, :string
    end

    def highest_rating
        Show.maximum(:rating)
    end
end