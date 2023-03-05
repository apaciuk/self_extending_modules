class Account
    attr_accessor :balance
    def initialize(balance: 0.0)
        @balance = balance
    end 

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end


end

module BankTransaction 
    extend self 

    def deposit(account, amount)
        account.deposit(amount)
    end 

    def withdraw(account, amount)
        account.withdraw(amount)
    end
end 

acc_1 = Account.new(balance: 100.00)
puts acc_1.balance 
BankTransaction.deposit(acc_1, 1000.00) 
puts acc_1.balance