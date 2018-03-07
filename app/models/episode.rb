class Episode < ApplicationRecord
  belongs_to :serie

  def human_name
  	"S" + season.to_s + "E" + number.to_s
  end

end
