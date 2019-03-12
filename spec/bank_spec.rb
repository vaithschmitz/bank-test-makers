require 'bank'

RSpec.describe Bank do
    bank = Bank.new
    context "#deposit" do
        it 'deposit adds to balance by deposited amount' do      
            expect{bank.deposit("10/01/2012", 1000)}.to change {bank.balance}.by(1000)
        end   
    end 
    context "#withdraw" do
        it "withdraw reduces balance by amount withdrawn" do
            expect{bank.withdraw("14/01/2012", 50)}.to change {bank.balance}.by(-50)
        end
    end

    context 'date' do
        it "transactions carry a date stamp" do
            bank.withdraw("14/10/2019", 50)
            bank.deposit("13/01/2012", 2000)
            expect(bank.statement).to include("14/10/2019" => -50)
            expect(bank.statement).to include("13/01/2012" => 2000)
        end
    end
end