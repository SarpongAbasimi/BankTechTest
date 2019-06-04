# frozen_string_literal: true

class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'You have 0 balance' unless money?

    @balance -= amount
  end

  private

  def money?
    @balance.positive?
  end
end

# date       || credit  || debit  || balance
# 14/01/2012 ||         || 500.00 || 2500.00
# 13/01/2012 || 2000.00 ||        || 3000.00
# 10/01/2012 || 1000.00 ||        || 1000.00

