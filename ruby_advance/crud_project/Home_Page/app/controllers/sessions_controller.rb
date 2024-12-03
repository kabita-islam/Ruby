class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to users_path(user)
    else
      flash[:danger] = "There was something wrong with your login"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged Out Successfully"
    redirect_to root_path
  end
end
