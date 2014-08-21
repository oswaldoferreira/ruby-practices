require 'spec_helper'

describe Receita do
  it 'valida presença de nome e data em receita' do
    @date = Date.new 1991, 03, 14
    @receita = Receita.new(nome_medicamento='Cataflan', data=@date)
    expect(@receita.nome_medicamento).to eq 'Cataflan'
    expect(@receita.data).to eq @date
  end
end