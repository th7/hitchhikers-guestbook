class UsersController < ApplicationController

  skip_filter :auth, :only => [:new, :create]

  def new
    @authenticating = true
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to root_path
  end

  def edit
  end

  def update
    redirect_to root_path
  end

  def destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
