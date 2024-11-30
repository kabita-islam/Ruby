class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if(@user.save)
      flash[:message] = "User Created successfully."
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:message] = "User updated SUccessfully."
      redirect_to users_path
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def index
    @users= User.all
  end
  def user_params
    params.require(:user).permit(:username, :email, :password)  
  end
end
