require 'order'

describe Menu do 

  subject(:order)  {described_class.new}
  let(:menu)     {double :menu}

  describe "Makes an order" do 
    it "makes a valid order of items from the menu" do 
      allow(order).to receive(:count)
      expect(order.make_order.count).to be > 0
    end
  end

end