require 'transactions'

RSpec.describe Transactions do
  let(:transaction) { described_class.new }
  let(:account) { double :account, credit: 10, balance: 20 , debit: ''}

  describe '#make' do
    it 'gets passed amount from transaction' do
      credit = account.credit
      debit = account.debit
      balance = account.balance

      expect(transaction.make(credit, debit, balance)).to eq(account.credit)
    end
  end
end
