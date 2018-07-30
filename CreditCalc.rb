class CreditCalc
	attr_reader :payment , :month_percent, :all_payment, :credit, :percent#выплата, месячный процент,все выплаты, сумма кредита, процентная ставка

	 def initialize(percent, credit, term)
    raise(ArgumentError, 'No negative params') unless percent.to_f >= 0 and credit.to_f >= 0 and term.to_i > 0
    @percent = percent.to_f
    @credit = [credit.to_f]
    @term = term.to_i
  end
end