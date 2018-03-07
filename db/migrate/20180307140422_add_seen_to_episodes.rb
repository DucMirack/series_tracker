class AddSeenToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :seen, :boolean
  end
end
