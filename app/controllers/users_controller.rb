class UsersController < ApplicationController
  before_action :find_user, only: [:show,:create,:update,:destroy]

  # def index
  #   @users = User.all
  # end

  def show
  end

  def new
    @user = User.new
  end
  #
  def create
    @user = User.create(params[:id])
  end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name)
  end

end
