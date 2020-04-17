class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |col|
      col.string :name 
      col.string :network
      col.string :day 
      col.integer :rating 
    end 
  end 
end 