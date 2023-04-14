class HomeController < ApplicationController
  def index
    user = User.find_by_email("beddings81@gmail.com")
    @events = user.events
  end
end