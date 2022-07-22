class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user, only: [:edit]


  def index
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :email, :password, :password_confirmation)
  end

  def check_user
    user = User.find(params[:id])
    if user.id != current_user.id
      redirect_to root_path
    else
    end
  end

end
