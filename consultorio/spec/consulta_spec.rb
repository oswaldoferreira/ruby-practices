require 'spec_helper'

describe Consulta do
  before(:each) do
    @date = Date.new 1991, 03, 14
    @time = Time.now
    @consulta = Consulta.new(data=@date, hora=@time)
  end

  it 'valida presença de data' do
    expect(@consulta.data).to eq @date
  end

  it 'valida presença de hora' do
    expect(@consulta.hora).to eq @time
  end

  it 'valida presença de medico' do
    @medico = Medico.new(nome = 'Vader', cpf = '123123123-72',
      endereco = 'Death Star 206', telefone = '5522 27272727', crm = '123')
    @consulta.medico = @medico
    expect(@consulta.medico.nome).to eq 'Vader'
  end

  it 'valida presença de paciente' do
    @paciente = Paciente.new(nome = 'Lea', cpf = '123123123-72',
          endereco = 'Tattoine 700', telefone = '5522 27272727',
          data_nasc = '13/03/1980')
    @consulta.paciente = @paciente
    expect(@consulta.paciente.nome).to eq 'Lea'
  end

  it 'valida presença de receita / receitas' do
    @receita1 = Receita.new(nome_medicamento='Cataflan', data=@date)
    @receita1 = Receita.new(nome_medicamento='Neosaldina', data=@date)
    @consulta.add_receita @receita1
    @consulta.add_receita @receita2
    expect(@consulta.receitas).to include @receita1, @receita2
  end
end