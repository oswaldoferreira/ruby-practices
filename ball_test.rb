# Crie e teste uma classe que modele uma bola e permita trocar e consultar a cor da bola.

require 'test/unit'
require_relative 'ball'

class TestBall < Test::Unit::TestCase

  def setup
    @ball = Ball.new(mm_diameter=738, color='white')
  end

  def test_consult_ball_diameter
    assert_equal(@ball.mm_diameter, 738)
  end

  def test_change_ball_mm_diameter
    @ball.mm_diameter = 778
    assert_equal(@ball.mm_diameter, 778)
  end

  def test_consult_ball_color
    assert_equal(@ball.color, 'White')
  end

	def test_change_ball_color
    @ball.color = 'blue'
    assert_equal(@ball.color, 'Blue')
  end
end