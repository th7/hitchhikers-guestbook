class HomeController < ApplicationController

  skip_filter :auth, :only => [:index]

  def index
    @entries = Entry.all
  end
end
