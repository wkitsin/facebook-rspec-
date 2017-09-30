class SessionsController < ApplicationController

	def new 
		@user = User.new 
	end 

	def create 
		byebug 
		login = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password]) 
		if login == false 
			flash[:alert] = 'Please log in again'
			render :new 
		else  
			session[:user_id]= login[:id]
			flash[:notice] = 'Welcome, joshhhh@nextacademy.com!'
			redirect_to statuses_path 
		end 
	end 

	def destroy 
		session[:user_id] = nil 
		redirect_to root_path 
	end
end
