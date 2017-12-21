class RenameMoviesToSeries < ActiveRecord::Migration[5.1]
  def change
  	rename_table :movies, :series
  end
end
