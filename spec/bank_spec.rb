require 'bank'

RSpec.describe Bank do
    bank = Bank.new
    context "#deposit" do
        it 'deposit adds to balance by deposited amount' do      
            expect{bank.deposit(1000)}.to change {bank.balance}.by(1000)
        end   
    end 
    context "#withdraw" do
        it "withdraw reduces balance by amount withdrawn" do
            expect{bank.withdraw(50)}.to change {bank.balance}.by(-50)
        end
    end
end