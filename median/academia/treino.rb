class Treino
  attr_accessor :datainicio, :objetivo

  def initialize datainicio, objetivo
    @datainicio, @objetivo = datainicio, objetivo
    @alunos = []
  end

  def add_aluno(aluno_parametro)
    @alunos << aluno_parametro
  end

  def exibir_alunos
    @alunos
  end
end