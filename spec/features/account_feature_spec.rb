require 'account'


RSpec.describe Account do
  describe 'Account' do 
    it 'allow users to should to create and deposit an account' do
      account = Account.new
      account.deposit(20)
      expect(account.balance).to eq(20)
    end

    it 'raises an error if user tries to withdraw money from an empty account' do
      account = Account.new 
      expect { account.withdraw(20) }.to raise_error('You have 0 balance')
    end

    it 'should allow users to remove money from their account if they have enough funds' do
      account = Account.new 
      account.deposit(40)
      expect(account.balance).to eq(40)
    end
  end
end