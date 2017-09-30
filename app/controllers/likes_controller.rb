class LikesController < ApplicationController

	def new 
		@like = Like.new 
	end 

	def create 
		like = Like.new(status_id: params[:like][:status], user_id: params[:like][:user])
		# byebug
		dup = Like.where(status_id: params[:like][:status], user_id: params[:like][:user])
		# byebug 
		status = like.status
		if dup.empty? == true 
			if like.save 
				flash[:notice] = "You liked #{status.title}!"
				redirect_to root_path 
			else 
				flash[:alert] = 'Error creating status.'
				render :new 
			end 

		else 
			flash[:alert] = 'You liked before!'
			redirect_to root_path 
		end 
	end 

	def destroy 
		like = Like.find(params[:id]).destroy 
		# byebug
		flash[:notice] = 'You unlike.' 
		redirect_to status_path(like.status.id)
	end 

	def edit 
	end 

	def update 
	end 
end
