class ChangeSeasonDatatype<ActiveRecord::Migration[5.2]
    def change
        change_column :shows, :season, :spring
    end
end