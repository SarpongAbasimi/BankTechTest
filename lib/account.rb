class Account
  attr_reader :client, :pin, :min_deposit
  def initialize(client:, pin:, min_deposit: 0)
    @client = client
    @pin = pin 
    @min_deposit = min_deposit
  end
end