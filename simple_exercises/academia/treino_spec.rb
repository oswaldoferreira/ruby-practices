require 'rspec'
require_relative 'treino'
require_relative 'aluno'

describe Treino do

  before (:each) do
    @treino = Treino.new '20/10/1993', 'Ficar grande'
  end

  it 'Valida presença de data inicio' do
    expect(@treino.datainicio).to eq '20/10/1993'
  end

  it 'Valida objetivo do treino' do
    expect(@treino.objetivo).to eq 'Ficar grande'
  end

  it 'Adiciona alunos à treino' do
    obj_aluno = Aluno.new('Hudson', 90, 'feminino')
    @treino.add_aluno(obj_aluno)

    expect(@treino.exibir_alunos).to include obj_aluno
  end


end

