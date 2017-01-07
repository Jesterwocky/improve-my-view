class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      # log in user
      session[:user_id] = @user.id
    else
      render json: @user.errors.full_messages, status: 401
  end

  def user_params
    params.permit(:email, :password, :username)
  end
end
