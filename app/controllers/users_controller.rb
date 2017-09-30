class UsersController < ActionController::Base

	def new 
		@user = User.new
	end 

	def create 
		user = User.new(user_params)
		if user.save 
			flash[:notice] = 'Account created. Please log in now.'
			redirect_to user
		else 
			flash[:alert] = 'Error creating account: '
			render :new 
		end 
	end 

	def destroy 
		# byebug 
		user = User.find(params[:id]).destroy 
		flash[:notice] = 'Account is deleted'
		redirect_to statuses_path
	end 

	def edit 
	end 

	def update 
		user = User.find(params[:id])
		if user.update(user_params)
			flash[:notice] = 'Account is updated successfully.'
			redirect_to user
		else 
			render :edit
		end 
	end 

	private 
	def user_params 
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end 
end 