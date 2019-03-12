class Bank
    attr_reader :balance, :statement

    def initialize
        @balance = 0
        @statement = {}
    end

    def deposit(date, amount)
        @balance += amount
        @statement[date] = amount, balance
    end

    def withdraw(date, amount)
        @balance -= amount
        @statement[date] = -amount, balance
    end

    def print_statement
        rev = @statement.to_a.reverse.to_h
        rev.each{|key, val| puts "#{key}, #{val[0]}, #{val[1]}"}
    end


end

bank = Bank.new
bank.deposit('14/10/2012', 500)
bank.deposit('15/10/2012', 600)
bank.withdraw('17/10/2012', 520)
bank.print_statement