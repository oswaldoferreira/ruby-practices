# Faça um Programa que peça os três lados de um triângulo. 
# O programa deverá informar se os valores podem ser um triângulo. 
# Indique, caso os lados formem um triângulo, se o mesmo é: 
# equilátero, isósceles ou escaleno.

require 'test/unit'
require_relative 'triangle'

class TestTriangle < Test::Unit::TestCase

  def test_triangulo_isosceles
    @triangle = Triangle.new([3, 3, 2])
    assert_equal(@triangle.type, 'Isósceles') 
  end

  def test_triangulo_equilatero
    @triangle = Triangle.new([3, 3, 3])
    assert_equal(@triangle.type, 'Equilátero') 
  end

  def test_triangulo_escaleno
    @triangle = Triangle.new([3, 5, 6])
    assert_equal(@triangle.type, 'Escaleno') 
  end
end