# Faça um Programa que pergunte quanto você ganha por hora e o número de horas 
# trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês, 
# sabendo-se que são descontados 11% para o Imposto de Renda, 
# 8% para o INSS e 5% para o sindicato, faça um programa que nos dê o salário bruto, 
# quanto pagou ao INSS, quanto pagou ao sindicato e o salário líquido. 
# Observe que Salário Bruto - Descontos = Salário Líquido. 
# Calcule os descontos e o salário líquido, conforme a tabela abaixo:
# a. + Salário Bruto : R$ b. - IR (11%) : R$
# c. - INSS (8%) : R$
# d. - Sindicato ( 5%) : R$ e. = Salário Liquido : R$

require 'test/unit'
require_relative 'work_salary'

class TestWorkSalary < Test::Unit::TestCase

  def setup
    @work_salary = WorkSalary.new(per_hour_gain=10, worked_hours=5)
  end

  def test_inss_value
    assert_equal(4, @work_salary.inss_tax)
  end

  def test_sindicato_value
    assert_equal(2.5, @work_salary.syndicate_tax)
  end

  def test_imposto_de_renda_value
    assert_equal(5.5, @work_salary.income_tax)
  end

  def test_salario_liquido_value
    assert_equal(38, @work_salary.liquid_salary)
  end
end