require "present"

RSpec.describe Present do
  it "wraps and unwraps the content" do
    box_one = Present.new
    box_one.wrap("socks")
    expect(box_one.unwrap).to eq "socks"
  end
  context "returns an error if item has not already been wrapped" do
    it "fails" do
      box_one = Present.new
      expect { box_one.unwrap }.to raise_error "No items have been wrapped."
    end
  end
end
