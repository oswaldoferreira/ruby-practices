require 'rspec'
require_relative 'serie'
require_relative 'treino'
require_relative 'exercicio'

describe Serie do 

	before(:each) do
		@treino = Treino.new '20/10/1993', 'Ficar grande'
		@exercicio = Exercicio.new 'pull over'

		@serie = Serie.new 3, 8
	end

	it 'valida presença de quantidade' do
		expect(@serie.quantidade).to eq 3
	end

	it 'valida presença de repetições' do
		expect(@serie.repeticoes).to eq 8
	end

	it 'valida treino nao iniciado' do
		expect(@serie.treino).to eq 'nenhum'
	end

	it 'valida treino iniciado' do
		@serie.add_treino @treino
		expect(@serie.treino).to eq @treino
	end
	it 'valida exercicio nao iniciado' do
		expect(@serie.exercicio).to eq 'nenhum'
	end
	
	it 'valida exercicio iniciado' do
		@serie.add_exercicio @exercicio
		expect(@serie.exercicio).to eq @exercicio
	end
	
end