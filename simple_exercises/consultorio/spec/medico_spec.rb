require 'spec_helper'

describe Medico do
  before(:each) do
    @medico = Medico.new(nome = 'Vader', cpf = '123123123-72',
      endereco = 'Death Star 206', telefone = '5522 27272727', crm = '123')
  end

  it 'valida presença de nome' do
    expect(@medico.nome).to eq 'Vader'
  end

  it 'valida presença de cpf' do
    expect(@medico.cpf).to eq '123123123-72'
  end

  it 'valida presença de endereco' do
    expect(@medico.endereco).to eq 'Death Star 206'
  end

  it 'valida presença de telefone' do
    expect(@medico.telefone).to eq '5522 27272727'
  end

  it 'valida presença de crm' do
    expect(@medico.crm).to eq '123'
  end

  it 'atribui uma especialidade a medico' do
    @medico.add_especialidade 'Cirurgião Intergalatico'
    expect(@medico.especialidade).to eq 'Cirurgião Intergalatico'
  end
end