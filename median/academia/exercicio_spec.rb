require 'rspec'
require_relative 'exercicio'

describe Exercicio do 
	
	before(:each) do 
		@exercicio = Exercicio.new 'pull over'
	end

	it 'Valida presenca do atributo descricao' do
		expect(@exercicio.descricao).to eq 'pull over'
	end
		
end