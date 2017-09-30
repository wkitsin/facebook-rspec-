class WelcomeController < ApplicationController
	def index 
		@session = session[:id]
	end 
end
