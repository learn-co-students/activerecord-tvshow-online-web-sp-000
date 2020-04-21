# migration for adding a "season" column to the shows table

class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
  end
end
