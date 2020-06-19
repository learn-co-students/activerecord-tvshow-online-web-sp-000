#write a migration to add a column, season, to the shows table
#datatype of this column is a string
#ActiveRecord::Migration[5.2]
class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
  end
end
