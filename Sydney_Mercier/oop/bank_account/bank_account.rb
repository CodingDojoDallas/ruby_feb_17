class BankAccount
	private
	attr_accessor :account_number, :checking, :savings
	@@number_of_accounts = 0
	@@interest_rate = 3.25
	def create_account_number
		rand(10 ** 16) #create random number up to 10, and do it 16 times
	end	

	public
	def initialize(checking_deposit, savings_deposit)
		@account_number = create_account_number
		@checking = checking_deposit
		@savings = savings_deposit
		@@number_of_accounts += 1
		p @@number_of_accounts
	end

	def deposit(account, amount)
		if account == "checking"
			@checking += amount
		elsif account == "savings"
			@savings += amount
		else
			p "account doesn't exist"
		end
	end

	def withdraw(account, amount)
		if account == "checking"
			if amount > @checking
				p "checking has insufficient funds"
			else
				@checking -= amount
			end
		elsif account == "savings"
			if amount > @savings
				p "savings is dry"
			else
				@savings -= amount
			end
		else
			p "account doesn't exist"
		end
	end

	def get_total_money
		@checking + @savings
	end

	def account_information
		p "account number is #{account_number}"
		p "total money is #{get_total_money}"
		p "checking balance is #{@checking}"
		p "savings balance is #{@savings}"
		p "Interest rate is #{@@interest_rate}%"
	end
	def get_checking
		@checking
	end
	def get_savings
		@savings
	end
	def get_account_number
		@account_number
	end
end



