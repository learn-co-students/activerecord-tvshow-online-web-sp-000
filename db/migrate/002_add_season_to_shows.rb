class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
    # change_table :shows do |t|
    #   t.string :season
    # end
  end
end
