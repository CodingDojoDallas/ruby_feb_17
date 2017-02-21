require_relative 'bank_account'

RSpec.describe BankAccount do
	it 'has a method for retrieving the checking account balance' do
		account = BankAccount.new(1000,500)
		expect(account.get_checking).to eq(1000)
	end
end

RSpec.describe BankAccount do
	it 'has a method for retrieving the total account balance' do
		account2 = BankAccount.new(1000,500)
		expect(account2.get_total_money).to eq(1500)
	end
end

RSpec.describe BankAccount do
	it 'has a method for retrieving the checking account balance' do
		account3 = BankAccount.new(500,500)
		expect(account3.withdraw('checking', 200)).to eq(300)
	end
end

RSpec.describe BankAccount do
	it 'creates an error for withraw more money than in account' do
		account4 = BankAccount.new(500,500)
		expect(account4.withdraw('checking', 600)).to eq("checking has insufficient funds")
	end
end