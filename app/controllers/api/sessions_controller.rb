class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      render json: ["Couldn't sign in. Email or password is invalid."],
        status: 401
  end

  def destroy
    reset_session
  end
end
