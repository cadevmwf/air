if Rails.env.development?
  
  Time.zone = "America/Chicago"
  
  Flight.destroy_all
  User.destroy_all
  Reservation.destroy_all
  Airport.destroy_all
  
  puts 'Creating airports.'
  airports = [
    {:code => 'ORD', :city => 'Chicago'},
    {:code => 'JFK', :city => 'New York'},
    {:code => 'BOS', :city => 'Boston'},
    {:code => 'LAX', :city => 'Los Angeles'},
  ]
  
  airports.each do |airport_hash|
    Airport.create airport_hash
  end
  
  puts 'Creating flights.'
  all_airports = Airport.all
  100.times do
    random_airports = all_airports.sample(2)
    departure_airport = random_airports.first
    arrival_airport = random_airports.last
        
    departure_time = rand(8..20)
    flight_number = rand(100..999)

    # Now we can generate a new flight using the random departure time
    # Maybe something like the code below:
    
    Flight.create :number => flight_number,
                  :departure_airport => departure_airport, 
                  :arrival_airport => arrival_airport, 
                  :departs_at => (Date.today + departure_time.hours),
                  :distance => MileageCalculator.new(departure_airport.code, arrival_airport.code).miles       
  end
  
  puts 'Creating users.'
  50.times do |i|
    User.create :email => "user#{i}@gmail.com",
                :name => "First#{i} Last#{i}",
                :password => 'test',
                :password_confirmation => 'test'
  end
  
  puts 'Creating reservations.'
  # :card_number, :departs_on, :flight_id, :user_id
  
  flights = Flight.all
  User.all.each do |user|
    flights.sample(rand(5)).each do |flight|
      Reservation.create :flight_id => flight.id,
                         :user_id => user.id,
                         :card_number => (4444000000000000 + rand(1000000000000)).to_s,
                         :departs_on => Date.today + rand(180)
    end
  end
  
  
  
  
  
  
  
  
  
end