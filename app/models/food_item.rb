class FoodItem < ApplicationRecord
	belongs_to :section
	validates :name, :price, presence: true
	has_many :orders
	mount_uploader :image, ImageUploader
	
	def self.search(search)
		where("name || description ILIKE ?", "%#{search}%")
	end
end
