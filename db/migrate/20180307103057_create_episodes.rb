class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :season
      t.integer :number
      t.references :serie, foreign_key: true
      t.integer :duration
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
