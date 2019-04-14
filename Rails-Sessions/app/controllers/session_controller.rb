class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.password == (params[:session][:password])
      log_in user
      render 'index'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'index'
    end
  end

  def destroy
  end
end
