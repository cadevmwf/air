class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_code, :departs_at, :departure_airport_code, :distance, :number, :departure_airport_id, :arrival_airport_id, :departure_airport, :arrival_airport
  
  belongs_to :departure_airport, :class_name => 'Airport', :foreign_key => :departure_airport_id
  belongs_to :arrival_airport, :class_name => 'Airport', :foreign_key => :arrival_airport_id

  def bookable?
    seats_remaining > 0
  end
  
  def arrives_at
    minutes = distance.to_f / 8
    return self.departs_at + (minutes * 60)
  end
  
end
