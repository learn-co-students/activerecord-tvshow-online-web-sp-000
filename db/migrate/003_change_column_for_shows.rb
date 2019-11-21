class ChangeColumnForShows < ActiveRecord::Migration[5.2]
  def change
    rename_column :shows, :integer, :rating
  end
end
