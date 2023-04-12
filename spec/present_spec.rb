require 'present'

describe Present do 
  context 'When no contents are passed' do 
    it "fails" do 
      present = Present.new
      present.wrap("toy")
      expect { present.wrap("toy") }.to raise_error "A contents has already been wrapped."
    end
  end
end