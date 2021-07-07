class CreateShows < ActiveRecord::Migration[5.2]
  def change
    drop_table :shows do |t|
    end
    create_table :shows do |t|
      t.string :name
      t.string :day
      t.string :network
      t.integer :rating
    end
  end
end
