require 'string_builder'

RSpec.describe StringBuilder do
    it "initially return an empty string as output" do
        string_builder = StringBuilder.new
        expect(string_builder.output).to eq ""
    end 

    it "initially returns a size of 0" do
        string_builder = StringBuilder.new 
        expect(string_builder.size).to eq 0
    end

    context "given an addition of string" do
        it "outputs that string" do
            string_builder = StringBuilder.new 
            string_builder.add("welcome")
            string_builder.add("world")
            expect(string_builder.output).to eq "welcomeworld"
        end

        it "has size of that string" do
            string_builder = StringBuilder.new 
            string_builder.add("welcome")
            string_builder.add("world")
            expect(string_builder.size).to eq 12  
        end
    end
end


