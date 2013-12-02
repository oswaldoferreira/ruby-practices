# Data com mês por extenso. Construa uma função que receba uma data
# no formato DD/MM/AAAA e devolva uma string no formato D de mesPorExtenso de AAAA. 
# Opcionalmente, valide a data e retorne NULL caso a data seja inválida.

require 'date'

class DateFormat
  attr_accessor :date

  def initialize date
    @date = date
  end

  def to_br
    if valid?
      "#{day} de #{month_number_to_spelled_out month} de #{year}"
    else
      'Invalid Date Format'
    end
  end

  private
  def month_number_to_spelled_out month_number
    months = %w(Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez)
    months.at month_number-1
  end

  def day
    binding.pry
    @day = date.split('/')[0].to_i
  end

  def month
    @month = date.split('/')[1].to_i
  end

  def year
    @year = date.split('/')[2].to_i
  end

  def valid?
    /\d\d.\d\d.\d+/.match(@date).to_s.eql? @date and month <= 12
  end
end