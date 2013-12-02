require 'test/unit'
require_relative 'retangulo'

class RetanguloTest < Test::Unit::TestCase

    def setup
        @retangulo = Retangulo.new 20, 40, 10, 10
    end

    def test_redefinir_centro
        @retangulo.redefinir_centro(5, 6)
        assert_equal(5, @retangulo.centro.x)
        assert_equal(6, @retangulo.centro.y)
    end

    def test_calcular_area
        assert_equal(800, @retangulo.calcular_area)
    end

    def test_calcular_perimetro
        assert_equal(120, @retangulo.calcular_perimetro)
    end

    def test_eh_quadrado
        assert_equal(@retangulo.eh_quadrado, false)
    end

    def teardown
        @retangulo = nil
    end

end

class PontoTest < Test::Unit::TestCase

    def setup
        @ponto = Ponto.new 3, 4
    end

    def test_x
        assert_equal(3, @ponto.x)
    end

    def test_y
        assert_equal(4, @ponto.y)
    end

    def teardown
        @ponto = nil
    end

    attr_accessor :x, :y

end