require_relative 'bank_account'

RSpec.describe BankAccount do
	it 'has a method to check the checking balance' do
		acc = BankAccount.new(25, 25)
		expect(acc.get_checking).to eq(25)
	end

	it 'has a method to check the total balance' do
		acc = BankAccount.new(50, 50)
		expect(acc.get_total_money).to eq(100)
	end

	it 'has a method to withdraw cash' do
		acc = BankAccount.new(50, 50)
	
		acc.withdraw("checking", 25)
		expect(acc.get_checking).to eq(25)
	end

	it 'raise an error if the user tries to withdraw more money than they have in the account' do
		acc = BankAccount.new(50, 50)
		expect(acc.withdraw("savings", 100)).to eq("savings is dry")
		acc.withdraw("checking", 100)
		expect(acc.get_checking).to eq(50)
	end

	it 'raise an error if users tries to print out how many bank accounts there are' do
		acc = BankAccount.new(50, 50)
		expect { acc.number_of_accounts }.to raise_error(NoMethodError)
	end

	it 'raise an error when the user tries to set the interest rate' do
		acc = BankAccount.new(50, 50)
		expect { acc.interest_rate = 0.04 }.to raise_error(NoMethodError)
	end

	it 'raise an error when the user tris to set any attribute' do
		acc = BankAccount.new(50, 50)
		expect { acc.checking = 500 }.to raise_error(NoMethodError)
		expect { acc.savings = 500 }.to raise_error(NoMethodError)
		expect { acc.account_number = 500 }.to raise_error(NoMethodError)
	end
end