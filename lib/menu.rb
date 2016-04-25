require 'twilio-ruby'
require_relative 'order'
require_relative 'sms'

class Menu

  MOUTHS_TO_FEED = 10
  DELIVERY_WINDOW = 3600
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

  attr_reader :expected_price

  def initialize(menu: nil, order: nil, sms: nil)
    @menu = menu
    @order = order 
    @sms = sms 
    @expected_price = expected_price
  end

  def show_menu
    MENU
  end

  def print_menu 
    MENU.map do |dish, price| 
      [dish.to_s.capitalize, price]
    end
  end

  def make_order
    # sms.deliver
    @order = (MENU.keys.sample rand(MOUTHS_TO_FEED))
  end 

  def count_dishes 
    @order.count 
  end

  def calculate_price(order)
    price = @order.map {|dish| MENU[dish] }
    price.inject(&:+)
  end

  def calculate_time 
    delivery_time = Time.now + DELIVERY_WINDOW
  end

  # def expected_price(order)
  #   # calculate_price
  # end

  def validate(order)
    raise "Total price is incorrect!" if calculate_price != expected_price
  end

  private 

  attr_reader :menu, :order, :sms

end
