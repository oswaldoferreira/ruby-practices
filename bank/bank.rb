# Crie uma classe que modele uma conta corrente e que permita definir 
# e consultar o numero da conta e o nome correntista, consultar o saldo e 
# fazer depósitos e saques.

require 'pry'

class BankAccount
  MIN_BALANCE_VALUE = 0.0
  MIN_DEPOSIT_VALUE = 0.0

  def initialize name, account_number
    @name = name
    @account_number = account_number
    @balance = MIN_BALANCE_VALUE
  end

  def consult_balance
    @balance
  end

  def account_status
    "Name: #{format_name} -
    Account Number: #{@account_number} -
    Account Balance: #{consult_balance}"
  end

  def deposit_money value
    value > MIN_DEPOSIT_VALUE ? @balance += value : @balance
  end

  def withdraw_money value
    value <= @balance && value > MIN_BALANCE_VALUE ? @balance -= value : @balance
  end

  private
  def format_name 
    @name.split().collect { |w| w.capitalize } * ' '
  end
end