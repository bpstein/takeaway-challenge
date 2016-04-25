require 'menu'

describe Menu do 

  subject(:menu)  {described_class.new}
  let(:order)     {double(:order)}

  describe "Lists available dishes and prices" do 
    it "provides details of individual dishes" do 
      expect(menu.show_menu).to eq described_class::MENU
    end

    it "lists the correct price for a burger" do 
      expect(menu.show_menu[:burger]).to eq 8
    end

    it "lists the correct price for a schnitzel" do 
      expect(menu.show_menu[:schnitzel]).to eq 8
    end

    it "lists the correct price for a dirty curry" do 
      expect(menu.show_menu[:curry]).to eq 6
    end
  end

  describe "Makes an order" do 
    it "makes a valid order of items from the menu" do 
      allow(order).to receive(:count)
      expect(menu.make_order.count).to be > 0
    end
  
    it "Correctly tallies the total price of the order" do 
      # order = {burger: 8, fries: 3, schnitzel: 8, toasties: 5}
      # expect(order.calculate_price).to eq 24
    end
  end

end