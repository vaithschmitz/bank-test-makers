class Bank
    attr_reader :balance, :statement

    def initialize
        @balance = 0
        @statement = {}
    end

    def deposit(date, amount)
        @balance += amount
        @statement[date] = amount
    end

    def withdraw(date, amount)
        @balance -= amount
        @statement[date] = -amount
    end


end