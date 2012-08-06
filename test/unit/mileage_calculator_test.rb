require 'test_helper'

class MileageCalculatorTest < ActiveSupport::TestCase

  test "the distance from ORD to JFK is 740 miles" do
    mc = MileageCalculator.new('ORD', 'JFK')
    assert_equal 740, mc.miles
  end
  
  test "the distance from ORD to LAX is 1744 miles" do
    mc = MileageCalculator.new('ORD', 'LAX')
    assert_equal 1744, mc.miles
  end
  
  test "the distance from LAX to ORD is 1744 miles" do
    mc = MileageCalculator.new('LAX', 'ORD')
    assert_equal 1744, mc.miles
  end
  
end
