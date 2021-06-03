class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have logged in Congrates!"
      redirect_to user_path(user)
    else
      flash[:danger] = "Wrong Credentials!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have logged out!"
  end
end
