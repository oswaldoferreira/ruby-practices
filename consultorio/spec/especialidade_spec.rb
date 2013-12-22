require 'spec_helper'

describe Especialidade do
  it 'valida presença de Especialidade' do
    @especialidade = Especialidade.new(tipo='Obstetra')
    expect(@especialidade.tipo).to eq 'Obstetra'
  end
end