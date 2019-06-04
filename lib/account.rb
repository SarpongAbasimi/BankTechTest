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