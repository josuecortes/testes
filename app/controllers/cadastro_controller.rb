class CadastroController < ApplicationController
	include Wicked::Wizard
	before_filter :authenticate_user!


	steps :pessoa, :igreja

	def show
		@usuario = current_user
		case step
		
			when :pessoa
				@pessoa = @usuario.pessoa.nil? ? @usuario.build_pessoa : @usuario.pessoa	
			when :igreja
				@usuario = current_user
				@igreja = @usuario.igreja.nil? ? @usuario.build_igreja : @usuario.igreja
		end
		render_wizard
	end

	def update
		@usuario = current_user
		@pessoa = @usuario.pessoa
		case step
			when :pessoa
				if !@usuario.pessoa
					@pessoa = @usuario.build_pessoa(params[:pessoa])
					@pessoa.save!
				end
			when :igreja
				if !@usuario.igreja
					@igreja = @usuario.build_igreja(params[:igreja])
					@igreja.save
				end

		end
		render_wizard @usuario
	end

	def finish_wizard_path
		home_index_path
	end
end
