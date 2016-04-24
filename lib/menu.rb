class Menu

  MOUTHS_TO_FEED = 10
  MENU = {
    burger: 8,
    fries: 3, 
    curry: 6,
    kebab: 5,
    fried_chicken: 5,
    meatballs: 6,
    schnitzel: 8,
    pizza: 7, 
    pasta: 6, 
    toasties: 5
  }

  # def initialize(order = Order.new)
  #   @order = order
  # end

  def show_menu 
    MENU
  end

  def make_order
    @order = (MENU.keys.sample rand(MOUTHS_TO_FEED))
  end 

  def count_dishes 
    @order.count 
  end

  def calculate_price
    price = @order.map {|dish| MENU[dish] }
    price.inject(&:+)
  end

end
