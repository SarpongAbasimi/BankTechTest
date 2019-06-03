require 'account'

RSpec.describe Account do
  let(:account) { described_class.new }

  describe 'when Initialized' do
    it 'allows a user to deposit money' do
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
  end
end