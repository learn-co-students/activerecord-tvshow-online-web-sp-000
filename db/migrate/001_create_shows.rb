#migration code to create shows table with name, network, day (all strings), rating(integer)
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
