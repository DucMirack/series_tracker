class AddProfileImageToSeries < ActiveRecord::Migration[5.1]
  def change
  	add_column :series, :profile_image, :string
  end
end
