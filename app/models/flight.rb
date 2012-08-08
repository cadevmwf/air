class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_code, :departs_at, :departure_airport_code, :distance, :number
  

  def bookable?
    seats_remaining > 0
  end
  
  def arrives_at
    minutes = distance.to_f / 8
    return self.departs_at + (minutes * 60)
  end
  
end
