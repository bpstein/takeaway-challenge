require 'order'

describe Menu do 

  subject(:order)  {described_class.new}
  let(:menu)     {double :menu}

  describe "Makes an order" do 
    it "makes a valid order of dishes from the menu" do 
      # allow(order).to receive(:count)
      # expect(order.make_order.count).to be > 0
    end

    it "adds several dishes from the menu" do 
      # order.add(:burger, 8)
      # order.add(:toasties, 5)
      # order.add(:fries, 3)
    end
  end

end