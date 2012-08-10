class Reservation < ActiveRecord::Base
  attr_accessible :card_number, :departs_on, :flight_id, :user_id
  
  belongs_to :flight
  belongs_to :user
  
  validates :card_number, :presence => true
  validates :departs_on, :presence => true
  validates :card_number, :format => { :with => /^4\d{15}/ }
  
end
