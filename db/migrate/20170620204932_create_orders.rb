class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :food_item, foreign_key: true
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :quantity
      t.string :coupon
      t.decimal :total

      t.timestamps
    end
  end
end
