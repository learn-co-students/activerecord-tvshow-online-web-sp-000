class CreateShows < ActiveRecord::Migration 
  
  create_table(:shows) do |t|  
    t.string :name
    t.string :network 
    t.string :day 
    t.integer :rating 
  end 
end 

#symbols are immutable and unique 
#table names have to be plural and columns singular 