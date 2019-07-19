lass AddSeasonToShows < ActiveRecord::Migration[5.2]
  def change
    create_column :seasons do |s|
      s.string   :season
    end
  end
end
