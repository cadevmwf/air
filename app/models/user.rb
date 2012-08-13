class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation
  
  has_secure_password
  
  has_many :reservations
  has_many :flights, :through => :reservations

  # def miles_earned
  #   miles = 0
  #   self.flights.each do |flight|
  #     miles += flight.distance
  #   end
  #   miles
  # end
  # def miles_earned
  #   miles = 0
  #   self.reservations.each do |reservation|
  #     miles += reservation.flight.distance
  #   end
  #   miles
  # end
  
end
