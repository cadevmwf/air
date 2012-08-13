class Reservation < ActiveRecord::Base
  attr_accessible :card_number, :departs_on, :flight_id, :user_id
  
  belongs_to :flight
  belongs_to :user
  
  validates :card_number, :presence => true
  validates :departs_on, :presence => true
  validates :card_number, :format => { :with => /^4\d{15}/ }
  
  after_create :increase_frequent_flyer_miles
  after_destroy :decrease_frequent_flyer_miles
  
  def decrease_frequent_flyer_miles
    self.user.miles_earned -= self.flight.distance
    self.user.save
  end
  # CHALLENGE: As a user, when I cancel a reservation,
  # it should be removed from my profile
  # and my frequent flyer miles should decrease.
  
  
  def increase_frequent_flyer_miles
    self.user.miles_earned += self.flight.distance
    self.user.save
  end
  
end
