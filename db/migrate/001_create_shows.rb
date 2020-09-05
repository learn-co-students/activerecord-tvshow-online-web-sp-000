class CreateShows  < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string    :name
      t.string    :season 
      t.text      :network
      t.text      :day
      t.integer   :rating
    end
  end
end
