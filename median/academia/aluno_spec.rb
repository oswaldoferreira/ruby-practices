require 'rspec'
require_relative 'aluno'

describe Aluno do

  before(:each) do
    @aluno = Aluno.new 'Hudson', 21, 'masculino'
  end 

  it 'valida presenca de nome' do
    expect(@aluno.nome).to eq 'Hudson'
  end

  it 'valida presenca de idade' do
    expect(@aluno.idade).to eq 21
  end

  it 'valida presenca de sexo' do
    expect(@aluno.sexo).to eq 'masculino'
  end
end