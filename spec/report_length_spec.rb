require 'report_length'

RSpec.describe "#report_length" do
    it "returns the string with the length of characters it contains" do 
        expect(report_length("lion")).to eq("This string was 4 characters long.")
        expect(report_length("december")).to eq("This string was 8 characters long.")
        expect(report_length("as")).to eq("This string was 2 characters long.")
        expect(report_length("")).to eq("This string was 0 characters long.")
    end
end 