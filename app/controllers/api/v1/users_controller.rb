class Api::V1::UsersController < Api::V1::BaseController

  before_action :set_user ,:only => [:show,:update,:destroy]

	def index 
		@users = User.all
	end
	def create
		@user = User.create(user_params)
    render json: {:message =>"add"}
	end
  def update
    @user.update(user_params)
    render json: {:message =>"edit"}
  end
  def destroy
    @user.destroy
    render json: {:message =>"delete"}
  end
  private
  def user_params
  	params.permit(:name,:email)
  end
  def set_user
    @user = User.find(params[:id])
  end
end