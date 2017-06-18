class AddImageToFoodItems < ActiveRecord::Migration[5.1]
  def change
    add_column :food_items, :image, :string
  end
end
