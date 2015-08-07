class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(jmeno: params[:session][:jmeno])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to "/administrace"
    else
      flash.now[:danger] = "Invalid username or/and email"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
