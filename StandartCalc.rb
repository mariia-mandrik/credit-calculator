class StandartCalc < CreditCalc
	attr_reader :payment, :month_percent, :all_payment, :credit, :percent
	def calc
		@payment = @credit.first/@term 
		@month_percent = []
		@all_payment = []

		@term.times do 
			@month_percent << @credit.last * @percent / 12
			@all_payment << @all_payment + @month_percent
			@credit << @credit.last - @payment
		end
	end
	
end