require 'account'

RSpec.describe Account do
  let(:account) { described_class.new(client: "Sarpong", pin: 1234, min_deposit: 5) }
  describe 'when initialized' do
    it 'allows a client to provide a name' do
      expect(account.client).to eq('Sarpong')
    end

    it 'allows a client to deposite a minimum ammount of £5' do
      expect(account.min_deposit).to eq(5)
    end

    it 'allows a client to provide a pin number' do
      expect(account.pin).to eq(1234)
    end
  end
end