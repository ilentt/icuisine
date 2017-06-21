class OrdersController < ApplicationController
	def new
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build
	end
	def create
		@item = FoodItem.find(params[:food_item_id])
		@order = @item.orders.build order_params
		rails "Hello"
		if @order.save
			redirect_to menu_path, flash: {success: "Thank you for your order"}
		else
			render 'new'
		end
	end
	def order_params
		params.require(:order).permit(:quantity)
	end
end
