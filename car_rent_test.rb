# Escreva um programa que pergunte a quantidade de km percorridos por um 
# carro alugado pelo usuário, assim como a quantidade de dias pelos quais o 
# carro foi alugado. Calcule o preço a pagar, sabendo que o carro custa 
# R$ 60,00 por dia e R$ 0,15 por km rodado.

require 'test/unit'
require_relative 'car_rent'

class TestCarRent < Test::Unit::TestCase

  def setup
    @car_rent = CarRent.new(km=10, days=2)
  end

  def test_calculate_per_day_car_rent_value
    assert_equal(@car_rent.send(:calculate_daily_rent_value), 120)
  end

  def test_calculate_per_km_car_rent_value
    assert_equal(@car_rent.send(:calculate_km_rent_value), 1.5)
  end

  def test_calculate_total_car_rent_value
    assert_equal(@car_rent.calculate_car_rent_value, 121.5)
  end
end