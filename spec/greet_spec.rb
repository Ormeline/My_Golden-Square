require 'greet'

RSpec.describe "#greet" do
  it "returns a greeting with a name" do
    expect(greet("Brielle")).to eq("Hello, Brielle!")
  end
end