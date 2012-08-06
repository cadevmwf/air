class MileageCalculator
  
  #   codes = ['ORD', 'JFK', 'BOS', 'LAX']
  
  CHART = { "ORD-JFK" => 1846, 
            'ORD-BOS' => 866, 
            'ORD-LAX' => 866, 
            'JFK-BOS' => 186, 
            'JFK-LAX' => 2475 
            'BOS-LAX' => 2475 
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
    
  end
  
  def duration
    
  end
  
end