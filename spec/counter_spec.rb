require 'counter'

RSpec.describe Counter do 
    it "checks if report retuns 0 when we have not called add method" do
    count = Counter.new
    result = count.report 
    expect(result).to eq "Counted to 0 so far."
    end
    it "checks if report returns 2 when a method is called" do
        count = Counter.new
        count.add(2)
        result = count.report
        expect(result).to eq "Counted to 2 so far."
    end 
end