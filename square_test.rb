# Crie e teste uma classe que modele um quadrado e permita definir, 
# alterar e consultar o tamanho dos lados e obter a área.

require 'test/unit'
require 'wavefront_obj'
require_relative 'square'

class TestSquare < Test::Unit::TestCase

  def setup
    @square = Square.new(side_meters=5)
  end

	def test_consult_square_side_meters_value
    assert_equal(@square.side_meters, 5)
	end

	def test_change_square_side_meters_value
    @square.side_meters = 8
    assert_equal(@square.side_meters, 8)
  end

  def test_calculate_square_area
    assert_equal(@square.calculate_area_meters, 25)
  end
end