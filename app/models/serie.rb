class Serie < ApplicationRecord
	mount_uploader :profile_image, ImageUploader
	
	validates_presence_of :title
	validates_processing_of :profile_image
	validate :profile_image_size_validation


	private
		def profile_image_size_validation 
			"L'image doit peser moins de 500KB" if profile_image.size > 0.5.megabytes
		end
end