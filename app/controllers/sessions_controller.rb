class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
     if user  
      #&& user.authenticate(params[:session][:password])
       log_in user
       params[:session][:remember_me] == '1' ? remember(user) : forget(user)
       redirect_back_or user
     else
      flash.now[:warning] = 'Invalid email/password'
      render 'new'
     end
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end


  def destroy
    log_out if logged_in?
    redirect_to root_url
  end


end
    