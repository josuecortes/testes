class ApplicationController < ActionController::Base
	protect_from_forgery
	#load_and_authorize_resource
	
	def after_sign_in_path_for(resource_or_scope)
		if !current_user.pessoa
			"/cadastro/pessoa"
		elsif !current_user.igreja
			"/cadastro/igreja"
		else
			home_index_path
		end
	end	
end