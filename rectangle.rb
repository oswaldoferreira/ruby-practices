class Rectangle

  def initialize base, height
    @base = base
    @height = height
    @center = [base/2, height/2]
  end

  def redefine_vertices
    @vertice1 = Point(@center[0] - @base/2,
                     @center[1] - @height/2)
    @vertice2 = Point(@center[0] - @base/2,
                    @center[1] + @height/2)
    @vertice3 = Point(@center[0] + @base/2,
                    @center[1] + @height/2)
    @vertice4 = Point(@center[0] + @base/2,
                    @center[1] - @height/2)
  end

  def redefine_center x, y
    @center = [x, y]
    redefine_vertices
    @center
  end

  def area
    @base * @height
  end

  def perimeter
    @base + @height * 2
  end

  def is_square?
    @base.eql? @height
  end
end

class Point

  def initialize x, y
    @x = x
    @y = y
  end
end
