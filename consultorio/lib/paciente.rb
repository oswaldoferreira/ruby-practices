class Paciente
  attr_accessor :nome, :cpf, :endereco, :telefone, :data_nasc

  def initialize nome, cpf, endereco, telefone, data_nasc
    @nome = nome
    @cpf = cpf
    @endereco = endereco
    @telefone = telefone
    @data_nasc = data_nasc
  end
end