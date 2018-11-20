class AddSeasonToShows < ActiveRecord::Migration 
  
    def change 
      add_column :shows, :season, :string 
    end 
    
end

#database could be in different states so we add to current table. W
# We may want user to only be in state that doesn't have the season 
# But might want most up to add to be working with season in table 