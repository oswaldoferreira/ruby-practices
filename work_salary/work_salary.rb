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

class WorkSalary
  INSS_PERCENT = 0.08
  SYNDICATE_PERCENT = 0.05
  INCOME_TAX = 0.11

  def initialize per_hour_gain=0, worked_hours=0
    @per_hour_gain, @worked_hours = per_hour_gain, worked_hours
  end

  def consult_status
  end

  def gross_salary
    @per_hour_gain * @worked_hours
  end

  def inss_tax
    gross_salary * INSS_PERCENT
  end

  def syndicate_tax
    gross_salary * SYNDICATE_PERCENT
  end

  def income_tax
    gross_salary * INCOME_TAX
  end

  def liquid_salary
    gross_salary - inss_tax - syndicate_tax - income_tax
  end
end