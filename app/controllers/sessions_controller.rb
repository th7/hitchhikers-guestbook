class SessionsController < ApplicationController
  skip_filter :auth, :only => [:new, :create, :signout]

  def new
    @authenticating = true
  end

  def create
    user = User.where(:username => params[:session][:username]).first
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
    end
    redirect_to root_path
  end

  def signout
    session.clear
    redirect_to root_path
  end

end
