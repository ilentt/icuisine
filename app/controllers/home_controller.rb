class HomeController < ApplicationController
  def index
  end
  
  def menu
  	@sections = Section.all
  	if params[:section_id].present?
  		@current_section = Section.find(params[:section_id])
  	else 
  		@current_section = Section.all.first
  	end

  end

  def contact_us
  end
end
