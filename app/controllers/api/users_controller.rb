module Api
  class UsersController < ApplicationController
    protect_from_forgery with: :null_session

    def index
      users = User.all

      render json: UserSerializer.new(users).serialized_json
    end

    def show
      user = User.find(params[:id])

      render json: UserSerializer.new(user).serialized_json
    end

    def create
      user = User.new(user_params)

      if user.save
        render json: UserSerializer.new(user).serialized_json
      else
        render json: { error: product.errors.messages }, status: 400
      end
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
  end
end
