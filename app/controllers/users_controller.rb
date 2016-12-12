class UsersController < ApplicationController
	def index 
	end
	def new 
		@user = User.new
	end
	def create
		@user = User.new(params_user)
		if @user.save
			redirect_to users_path
		else
			render :action => :new
		end
	end
	private
	def params_user
		params.require(:user).permit(:name,:email)
	end
end
