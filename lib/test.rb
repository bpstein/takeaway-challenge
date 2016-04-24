require './lib/menu'

menu = Menu.new

puts menu
puts
puts menu.show_menu
puts
puts menu.make_order
puts menu.count_dishes



# ####COMPLETED####

# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of 
# several available dishes


#### TO DO #####

# As a customer
# So that I can verify that my order is correct
# I would like to check that the total I have been 
# given matches the sum of the various dishes in my order


# As a customer
# So that I am reassured that my order will be 
# delivered on time
# I would like to receive a text such as 
# "Thank you! Your order was placed and will be 
# delivered before 18:52" after I have ordered



# Ensure you have a list of dishes with prices
# Place the order by giving the list of dishes, their 
# quantities and a number that should be the exact total. 
# If the sum is not correct the method should raise an error, 
# otherwise the customer is sent a text saying that the order was placed successfully 
# and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
# The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
# Use the twilio-ruby gem to access the API
# Use the Gemfile to manage your gems
# Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
# However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent
# Advanced! (have a go if you're feeling adventurous):

# Implement the ability to place orders via text message.