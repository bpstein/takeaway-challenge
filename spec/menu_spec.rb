require 'menu'

describe Menu do 

  subject(:menu) {described_class.new}

  it "provides details of individual dishes" do 
    expect(menu.show_menu).to eq described_class::MENU
  end

end