# add migration to add column "season" to shows table
# datatype : string
class AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :season, :string
  end
end
