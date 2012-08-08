class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    
    @user = User.find_by_id(session["zebra"])
  end

end
