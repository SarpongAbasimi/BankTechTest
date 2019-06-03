class Account
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance = amount + @balance
  end

  def withdraw(amount)
    raise 'You have 0 balance' unless has_money?
    @balance = @balance - amount
  end

  private

  def has_money?
    @balance > 0
  end
end




# date       || credit  || debit  || balance
# 14/01/2012 ||         || 500.00 || 2500.00
# 13/01/2012 || 2000.00 ||        || 3000.00
# 10/01/2012 || 1000.00 ||        || 1000.00