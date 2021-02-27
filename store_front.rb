
puts "Hello whats your name:"
name = gets.chomp

#Use an array to represent the items in the store

items = ["potato","milk", "egg","red onion","dried lemon","frankincense","moon dust","saffron","glass spice jar","red fabric","orange fabric","handicrafts","small persian rug","used medium space suit","heffalump shag rug","woozle hide purse"]

puts "\nWelcome to my store #{name}\n\nHere is a list of items we have for you to purchase\n------------------------------------------------------------\n"

#Print the list
items.each do |item|
  print "*"
  puts item
end

#Create an array to hold user input
cart = []
error_cart= Array.new
user_input = ""

#use if and while loop to run program until the user enters key word 'done'

while true  do
  puts "\nPlease enter what you would like to add to your cart (enter 'done' when finshed)"
  user_input = gets.chomp.downcase

  if user_input == "done"
    break
  elsif true == items.include?(user_input)
    puts "\nWe have plenty of #{user_input}. \nPlease contuine if you want to add something else"
    cart.push(user_input)
  else
    puts "Sorry we dont have any #{user_input}. \nPlease enter something else and remeber to enter 'done' when your finished"
    
    #puts error items in its own array
    error_cart.push(user_input)
  end
end

puts "Thanks for shopping with us #{name}\n "

puts "These are the iteams in your cart"

puts "Your cart:\n----------\n"

cart.each do |item|
  print "*"
  puts "#{item}"
end

# if user inputs an item not in the store the if statment will make sure it gets printed 
if !error_cart.empty? 
  puts "\nBtw, we noticed you tried entering in some items that aren't part of the online Store. We don't have the following items yet but will let you know if they show up!:"

  error_cart.each do |item|
    print "*"
    puts "#{item}"
  end

end

