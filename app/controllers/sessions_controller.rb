class SessionsController < ApplicationController
  def new
  end

  def create
    @current_user = login(params[:email], params[:password])
    if @current_user
      redirect_to posts_url :notice => "Logged In!"
    else 
      flash.now.alert = "Email or Password was incorrect"
      render :new
    end
  end

  def destroy 
    logout
    redirect_to root_url, :notice => "Logged Out!"
  end
end