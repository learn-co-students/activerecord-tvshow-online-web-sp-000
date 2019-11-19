class CreateShows < ActiveRecord::Migration[5.2]
  def change 
    create_table :shows do |t|
      t.string :network
      t.string :name 
      t.string :day 
      t.integer :rating
  end
end 
end