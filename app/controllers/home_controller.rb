class HomeController < ApplicationController

  skip_filter :auth, :only => [:index]

  def index
  end
end
