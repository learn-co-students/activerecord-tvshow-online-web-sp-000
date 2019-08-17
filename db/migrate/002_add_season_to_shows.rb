class AddSeasonToShows < ActiveRecord::Migration
  def change

    add_column :shows, :season, :string

  end
end
#
# class CreateShows < ActiveRecord::Migrate[5.1]
#   def change
#
#     create_table :shows do |t|
#       t.string :name
#       t.string :day
#       t.string :network
#       t.integer :rating
#     end
#   end
# end
