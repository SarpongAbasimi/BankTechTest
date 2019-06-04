require 'statement'

RSpec.describe Statement do
  let(:statement) { Statement.new }

  describe '#history' do
    it 'contains transaction history' do
      expect(statement.history).to eq([])
    end
  end
end