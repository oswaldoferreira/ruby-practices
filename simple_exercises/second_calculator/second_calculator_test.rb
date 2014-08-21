require 'test/unit'
require_relative 'second_calculator'

class TestSecondCalculator < Test::Unit::TestCase

  def test_convertion_hash
    second_calculator = SecondCalculator.new(1, 1, 1, 10)
    assert second_calculator.convertion_hash.is_a? Hash
  end

  def test_to_sec_convertions
    second_calculator = SecondCalculator.new(1, 1, 1, 10)
    assert_equal(second_calculator.convert_all_to_sec, 90070)
  end
end
