class Receita
  attr_accessor :nome_medicamento, :data

  def initialize nome_medicamento, data
    @nome_medicamento, @data = nome_medicamento, data
  end
end