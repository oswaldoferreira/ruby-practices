class Retangulo

    def initialize base, altura, x, y
        @base = base
        @altura = altura
        @centro = Ponto.new(x, y)
    end

    def redefinir_vertices
        @vertice1 = Ponto.new(@centro.x - @base/2, @centro.y - @altura/2)
        @vertice2 = Ponto.new(@centro.x - @base/2, @centro.y + @altura/2)
        @vertice3 = Ponto.new(@centro.x + @base/2, @centro.y + @altura/2)
        @vertice4 = Ponto.new(@centro.x + @base/2, @centro.y - @altura/2)
    end

    def redefinir_centro x, y
    	@centro = Ponto.new x, y
    	redefinir_vertices
    end

    def calcular_area
        @base * @altura
    end

    def calcular_perimetro
        (@base + @altura) * 2
    end

    def eh_quadrado
        @base == @altura
    end

    attr_accessor :base, :altura, :centro, :vertice1, :vertice2, :vertice3, :vertice4

end

class Ponto

    def initialize x, y
        @x = x
        @y = y
    end

    attr_accessor :x, :y

end