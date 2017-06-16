class HomeController < ApplicationController
  def index
  end
  
  def menu
  	@sections = Section.all
    if params[:section_id].present?
    	@current_section = Section.find(params[:section_id])
    	@food_items = FoodItem.where(section_id: @current_section)
    else 
    	@food_items = FoodItem.all
    end
  end

  def contact_us
  end
end
