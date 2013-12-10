class Serie
	attr_accessor :quantidade, :repeticoes

	def initialize quantidade, repeticoes
		@quantidade, @repeticoes = quantidade, repeticoes
		@treino = 'nenhum'
		@exercicio = 'nenhum'
	end

	def add_treino treino
		@treino = treino
	end

	def treino
		@treino
	end

	def add_exercicio exercicio
		@exercicio = exercicio
	end

	def exercicio
		@exercicio
	end
end