require 'pry'

class Triangle
  attr_accessor :sides

  def initialize sides
    @sides = sides
  end

  def type
    triangle_types @sides.uniq.length
  end

  private
  def triangle_types same_sides
    {1 => 'Equilátero', 2 => 'Isósceles', 3 => 'Escaleno'}[same_sides]
  end
end