if Rails.env.development?
  
  Time.zone = "America/Chicago"
  
  Flight.destroy_all
  
  codes = ['ORD', 'JFK', 'BOS', 'LAX']
  
  10.times do 
    departure_code, arrival_code = codes.sample(2)
    departure_time = rand(8..20)
    flight_number = rand(100..999)

    # Now we can generate a new flight using the random departure time
    # Maybe something like the code below:
    #
    # Flight.create :number => flight_number
    #               :departure => from, 
    #               :arrival => to, 
    #               :departs_at => (Date.today + departure_time.hours),
    #               :miles => MileageCalculator.new(from, to).miles
  end
  
end