class FlightsController < ApplicationController

  def index
    # Flight.offset(2).limit(2)
    @flights = Flight.limit(4)
  end

end
