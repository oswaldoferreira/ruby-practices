# Crie e teste uma classe que modele uma bola e permita trocar e consultar a cor da bola.

class Ball
  attr_accessor :mm_diameter, :color

  def initialize(mm_diameter=0, color)
    @mm_diameter = mm_diameter
    @color = color
  end

  def color
  	@color.capitalize
  end
end