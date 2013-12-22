class Medico
  attr_accessor :nome, :cpf, :endereco, :telefone, :crm, :especialidade

  def initialize nome, cpf, endereco, telefone, crm
    @nome = nome
    @cpf = cpf
    @endereco = endereco
    @telefone = telefone
    @crm = crm
  end

  def add_especialidade especialidade
    @especialidade = especialidade
  end
end