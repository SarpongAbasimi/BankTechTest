require 'transactions'

RSpec.describe Transactions do
  let(:statement) { double :statement, history: [] }
  let(:transaction) { described_class.new(statement) }
  let(:account) { double :account, credit: 10, balance: 20 , debit: '' }
  describe '#make' do
    it 'gets passed amount from transaction' do
      credit = account.credit
      debit = account.debit
      balance = account.balance
      transaction.make(credit, debit, balance)
      time = Time.new
      allow(time).to receive(:year).and_return(2019)
      allow(time).to receive(:month).and_return(06)
      allow(time).to receive(:day).and_return(04)
      transaction_date = "#{time.year}/#{time.month}/#{time.day}"
      expect(statement.history).to include([transaction_date, credit, debit, balance])
    end
  end
end
