# frozen_string_literal: true
require_relative 'transactions'

class Account
  attr_accessor :balance

  def initialize(transaction = Transactions.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.make(amount,'', @balance)
  end

  def withdraw(amount)
    raise 'You have 0 balance' unless money?

    @balance -= amount
    @transaction.make('', amount, @balance)
  end

  def account_statement
    @transaction.transaction_statement
  end

  private

  def money?
    @balance.positive?
  end
end

# date       || credit  || debit  || balance
# 14/01/2012 ||         || 500.00 || 2500.00
# 13/01/2012 || 2000.00 ||        || 3000.00a
# 10/01/2012 || 1000.00 ||        || 1000.00

