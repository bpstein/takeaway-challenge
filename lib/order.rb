# class Order

#   attr_reader :order, :menu

#   def initialize 
#     @order = order 
#   end

#   def make_order
#     (MENU.keys.sample rand(MOUTHS_TO_FEED))
#   end 

#   def count_dishes 
#     @order.count 
#   end

#   def calculate_price
#     price = @order.map {|dish| MENU[dish] }
#     price.inject(&:+)
#   end

# end