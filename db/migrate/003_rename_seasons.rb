class RenameSeasons < ActiveRecord::Migration[5.2]

  def change
    rename_column :shows, :seasons, :season
  end

end
