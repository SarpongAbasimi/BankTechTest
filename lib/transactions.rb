require_relative 'statement'

class Transactions
  TRANSACTIONS_HEADERS = "date || credit || debit || balance\n".freeze

  def initialize(statement = Statement.new)
    @statement = statement
  end

  def make(credit, debit, balance)
    time = Time.now.strftime('%d/%m/%Y')
    @statement.history.push([time, credit, debit, balance])
  end

  def transaction_statement
    print TRANSACTIONS_HEADERS
    @statement.history.each do |each_amount|
      credit_or_debit(each_amount)
    end
  end

  private

  def credit_or_debit(each_amount)
    if each_amount[2] == ''
      credit = '%.2f' % each_amount[1]
      balance = '%.2f' % each_amount[3]
      print "#{each_amount[0]}||#{credit}|| ||#{balance}\n"
    else
      print("#{each_amount[0]}|| || #{each_amount[2]} || #{balance}\n")
    end
  end
end
