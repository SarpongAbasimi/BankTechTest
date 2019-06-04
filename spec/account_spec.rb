# frozen_string_literal: true

require 'account'

RSpec.describe Account do
  let(:account) { described_class.new }

  describe 'when Initialized' do
    it 'has a balance of zero when account is created' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'allows a client to deposit an amount' do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end

    it 'allows a client to deposit an amount' do
      account.deposit(14)
      account.deposit(64)
      account.deposit(10)
      expect(account.balance).to eq(88)
    end

    it 'allows a client to deposit an amount' do
      account.deposit(1000)
      account.deposit(2000)
      expect { account.deposit(10) }.to change { account.balance }.from(3000).to(3010)
    end
  end

  describe '#withdraw' do
    it 'allows a user to withdraw money from an account' do
      account.deposit(50)
      expect { account.withdraw(20) }.to change { account.balance }.by(-20)
    end

    it 'raises an error if a user withdraws money from an empty account' do
      expect { account.withdraw(10) }.to raise_error('You have 0 balance')
    end
  end

  describe "#account_statement" do
    it 'prints the account statement' do
      account.deposit(1000)
      account.deposit(2000)
      result = [["2019/6/4", 1000, "", 1000], ["2019/6/4", 2000, "", 3000]]
      expect(account.account_statement).to eq(result);
    end
  end
end
