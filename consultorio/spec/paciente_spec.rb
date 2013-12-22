require 'spec_helper'

describe Paciente do
  before(:each) do
    @paciente = Paciente.new(nome = 'Lea', cpf = '123123123-72',
      endereco = 'Tattoine 700', telefone = '5522 27272727',
      data_nasc = '13/03/1980')
  end

  it 'valida presença de nome' do
    expect(@paciente.nome).to eq 'Lea'
  end

  it 'valida presença de cpf' do
    expect(@paciente.cpf).to eq '123123123-72'
  end

  it 'valida presença de endereco' do
    expect(@paciente.endereco).to eq 'Tattoine 700'
  end

  it 'valida presença de telefone' do
    expect(@paciente.telefone).to eq '5522 27272727'
  end

  it 'valida presença de data de nascimento' do
    expect(@paciente.data_nasc).to eq '13/03/1980'
  end
end