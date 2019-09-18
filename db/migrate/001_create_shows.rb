# Write a migration code to create a shows table
# table should have name, network, day, and ratings column_name
# datatype : string, rating : integer
class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
