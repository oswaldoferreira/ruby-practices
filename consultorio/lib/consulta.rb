class Consulta
  attr_accessor :data, :hora, :paciente, :medico, :receitas

  def initialize data, hora
    @data = data
    @hora = hora
    @receitas = []
    @paciente = nil
    @medico = nil
  end

  def add_receita receita
    @receitas << receita
    @receitas.flatten!
  end
end