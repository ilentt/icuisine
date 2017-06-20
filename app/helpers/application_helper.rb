module ApplicationHelper
	def active_class(link_path)
		current_page?(link_path) ? "btn-primary" : ""
	end
	def menu_active(link_path)
		current_page?(link_path) ? "active" : ""
	end
end
