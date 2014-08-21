# Crie uma classe que modele uma conta corrente e que permita definir 
# e consultar o numero da conta e o nome correntista, consultar o saldo e 
# fazer depósitos e saques.

require 'test/unit'
require_relative 'bank'

class TestBankAccount < Test::Unit::TestCase

  def setup
    @bank_account = BankAccount.new(nome="oswaldo luiz", account_number='111-5')
  end

  def test_consult_account_status
    assert_equal(@bank_account.account_status, 
    "Name: Oswaldo Luiz -
    Account Number: 111-5 -
    Account Balance: #{@bank_account.consult_balance}")
  end

  def test_balance_starts_with_zero
    assert_same(@bank_account.consult_balance, 0.0)
  end

  def test_deposit_money
    @bank_account.deposit_money 12500
    @bank_account.deposit_money 10.5
    assert_same(@bank_account.consult_balance, 12510.5)
  end

  def test_cannot_deposit_negative_value
    @bank_account.deposit_money 300
    @bank_account.deposit_money -10
    assert_same(@bank_account.consult_balance, 300.0)
  end

  def test_withdraw_money
    @bank_account.deposit_money 300
    @bank_account.withdraw_money 200
    @bank_account.withdraw_money 50
    assert_same(@bank_account.consult_balance, 50.0)
  end

  def test_cannot_withdraw_higher_value_than_balance
    @bank_account.deposit_money 300
    @bank_account.withdraw_money 320
    assert_same(@bank_account.consult_balance, 300.0)
  end
end
