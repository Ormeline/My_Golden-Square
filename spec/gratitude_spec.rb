require 'gratitudes'

RSpec.describe Gratitudes do
  it "adds a gratitude to the list " do
    gratitude = Gratitudes.new
    gratitude.add("healthy family")
    expect(gratitude.instance_variable_get(:@gratitudes)).to eq (["healthy family"])
  end

  it "looks at where there are no gratitudes and returns a message" do
    gratitude = Gratitudes.new
    expect(gratitude.format).to eq("Be grateful for: ")
  end
  
  context "where there are more gratidudes" do
    let(:gratitude) { Gratitudes.new }
    before do
      gratitude.add("opportunities")
      gratitude.add("good friends")
    end

    it "returns a message with all the gratitudes" do
      expect(gratitude.format).to eq("Be grateful for: opportunities, good friends")
    end 
  end
end 