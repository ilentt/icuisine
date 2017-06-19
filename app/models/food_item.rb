class FoodItem < ApplicationRecord
	belongs_to :section
	mount_uploader :image, ImageUploader
	
	def self.search(search)
		where("name || description ILIKE ?", "%#{search}%")
	end
end
