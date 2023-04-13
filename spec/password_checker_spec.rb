require 'password_checker'

RSpec.describe PasswordChecker do

    it "initially checks if password is valid and returns true" do
        password_checker = PasswordChecker.new
        expect(password_checker.check("pwordABC")).to eq true
    end 

    context "when password is less than 8 characters" do
        it "raises an error message" do
          password_checker = PasswordChecker.new
          expect { password_checker.check("love")}.to raise_error("Invalid password, must be 8+ characters.")
        end
    end

    context "when password has exactly 8 or more characters" do
        it "returns true" do
            password_checker = PasswordChecker.new
            expect(password_checker.check("beautiful")).to eq true
        end
    end

end



 
