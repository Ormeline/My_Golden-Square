require 'check_codeword'

RSpec.describe "#check_codeword" do
    it "checks and returns 'Correct! Come in.' when enters the correct codeword" do 
        expect(check_codeword("horse")).to eq("Correct! Come in.")
        end
    it "returns 'Close, but nope.' when enters a codeword that starts with 'h' and ends with 'e'" do 
        expect(check_codeword("house")).to eq("Close, but nope.")
        end 
    it "returns 'WRONG!' when enters a random codeword" do 
        expect(check_codeword("hat")).to eq("WRONG!") do 
        end
    end 
end 