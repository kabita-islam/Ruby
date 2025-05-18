class UserController < ApplicationController
  def index
    @users=User.all
  end
  def new
    @user=User.new
  end
  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to all_users_path (@user)
    else
      render "new"
    end
  end
  def edit
    @user=User.find(params[:id])
  end
  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to all_users_path (@user)
    else
      render "edit"
    end
  end

  def show 
    @user=User.find(params[:id])
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to all_users_path

  end
  def user_params
    params.require(:user).permit(:username, :email)
  end
end
