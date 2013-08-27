class UsersController < ApplicationController

  def index
  end

  def new
    @authenticating = true
  end

  def create
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
end
