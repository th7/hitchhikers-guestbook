class SessionsController < ApplicationController

  def new
    @authenticating = true
  end

  def create
    redirect_to root_path
  end

end
