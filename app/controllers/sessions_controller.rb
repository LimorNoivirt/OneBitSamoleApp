class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
     flash.now[:warning] = 'Invalid email/password'
     render 'new'
    end
    
  end

  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find_by(id: session[:user_id])
    end
  end


  def destroy
  end


end
