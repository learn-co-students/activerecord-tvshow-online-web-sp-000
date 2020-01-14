#Write migration to add column to existing table shows called season, datatype string
class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
  end
end
