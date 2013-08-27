class SessionsController < ApplicationController

  def new
    @signing_in = true
  end

  def create
    redirect_to root_path
  end

end
