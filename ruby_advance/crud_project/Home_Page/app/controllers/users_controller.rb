class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if(@user.save)
      flash[:message] = "#{@user.username} Created successfully."
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    # @user = User.find(params[:id])
  end
  def update
    # @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:message] = "User updated Successfully."
      redirect_to users_path
    else
      render :new
    end
  end
  def show
    # @user = User.find(params[:id])
  end
  def index
    @users= User.paginate(page: params[:page], per_page: 5)
  end
  def user_params
    params.require(:user).permit(:username, :email, :password)  
  end
  def set_user
    @user = User.find(params[:id])
  end
end
