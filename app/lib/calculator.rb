class Calculator
  attr_accessor :loan, :time, :rate

  def payment
    i = (1 + rate/12.0)
    j = (i ** (12/12)) - 1
    a = (1 - (1/(1 + j)) ** time)
    annuity = a / j
    @payment = (loan/annuity).round(2)
  end

  def generate
    return payment
  end
end
