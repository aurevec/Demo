class SessionsController < ApplicationController
  skip_before_filter :authorize
  
  def new
  end

  def create
    if user = User.authenticate(params[:login], params[:password])
      session[:user_id] = user.id
      session[:login] = user.login
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:login] = nil
    redirect_to home_url, :notice => "Logged out"
  end
end
