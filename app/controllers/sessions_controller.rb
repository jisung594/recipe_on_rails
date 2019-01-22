class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if ##############
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to new_user_path
      # redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :user_id

    redirect_to sessions_new_path
  end
end
