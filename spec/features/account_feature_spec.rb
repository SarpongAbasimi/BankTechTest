# frozen_string_literal: true

require 'account'


RSpec.describe Account do
  describe 'Account' do
    it 'allow users to should to create and deposit an account' do
      account = Account.new
      account.deposit(20)
      expect(account.balance).to eq(20)
    end

    it 'raises error if users withdraw money from an empty account' do
      account = Account.new
      expect { account.withdraw(20) }.to raise_error('You have 0 balance')
    end

    it 'allows users to take funds from account' do
      account = Account.new
      account.deposit(40)
      account.withdraw(20) 
      expect(account.balance).to eq(20)
    end

    xit 'prints statement to users' do
      account = Account.new
      account.deposit(40)
      account.withdraw(20) 
      expect { account.account_statement }.to output('
        date    || credit || debit || balance
        05/06/2019|| 40     ||       || 40
        05/06/2019||        || 20    || 20
      ').to_stdout
    end

  end
end
