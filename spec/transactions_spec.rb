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

      time = Time.now.strftime("%d/%m/%Y")
      
      expect(statement.history).to include([time, credit, debit, balance])
    end
  end
  
end

print(Time.now.strftime("%d/%m/%Y"))