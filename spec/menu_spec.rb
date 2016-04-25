require 'menu'

describe Menu do 

  subject(:menu)      {described_class.new}
  let(:order)         {double(:order)}
  let(:valid_order)   {double(:order, menu: [:burger, :kebab], expected_price: 13)}
  let(:invalid_order) {double(:order, menu: [:burger, :kebab], expected_price: 40)}
  let(:sms)           {double(:sms)}

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
      # allow(order).to receive(:count)
      # expect(menu.make_order.count).to be > 0
    end
  
    it "Correctly tallies the total price of the order" do 
      order = {burger: 8, fries: 3, schnitzel: 8, toasties: 5}
      expect(order.calculate_price(order)).to eq 24
    end
  end
 
  describe "Confirms an order" do 
    it "rejects an order that has an incorrect total price" do 
      # expect(invalid_order).to receive(:estimated_price)
      # expect().to raise_error "Total price is incorrect!"
    end

    it "sends an SMS when the order has been placed" do 
      expect(sms).to receisve(:deliver)
      menu.make_order
    end
  end

end