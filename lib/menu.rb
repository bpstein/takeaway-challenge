require 'twilio-ruby'

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

  def print_menu 
    MENU.map do |dish, price| 
      [dish.to_s.capitalize, price]
    end
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

  # def send(sms)
  #   account_sid = "AC9127abd443337cd2d2ad3f75a1fad9b0"
  #   auth_token = "b6e88f89b1d3a190682275ff36868b08"
  #   client = Twilio::REST::Client.new account_sid, auth_token
  #   from = "+61282948480"
  #   client.account.messages.create(
  #     :from => from, 
  #     :to => "+61403520190"
  #     :body => sms
  #   )
  # end

end
