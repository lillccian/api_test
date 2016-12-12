class Api::V1::UsersController < Api::V1::BaseController
	def index 
		@users = User.all
	end
  def show
    @user = User.find(params[:id])

    # 原文使用 Api::V1::UserSerializer
    # 我们现在使用 app/views/api/v1/users/show.json.jbuilder
    # render(json: Api::V1::UserSerializer.new(user).to_json)
  end
end