# Crie uma classe que modele um retângulo e permita 
# definir a altura e a largura. A classe também deve
# permitir definir e alterar o ponto que representa
# o centro do retângulo e permitir que sejam 
# consultados os pontos dos quatro vértices. 
# Um ponto deve ser modelado por outra classe, 
# e deve permitir definir e consultar valores x e y do ponto. 
# O objeto também deve informar sua área, seu perímetro e se é um quadrado.

require 'test/unit'
require_relative 'rectangle'

class TestRectangle < Test::Unit::TestCase
  def setup
    @rectangle = Rectangle.new(base=100, height=10)
  end

  def test_area
    assert_equal(@rectangle.area, 1000)
  end

  def test_perimeter
    assert_equal(@rectangle.perimeter, 120)
  end

  def test_if_its_a_square
    assert_equal(@rectangle.is_square?, false)
  end
end