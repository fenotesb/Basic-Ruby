prices = {}
number_of_products= {}

while true do

  puts "Whats the name of your item?"
  item_name = gets.chomp

  puts "How many #{item_name}[s] would you like to add?"
  if number_of_products[item_name].nil?
    number_of_products[item_name] =  0
  end
  number_of_products[item_name] +=  gets.chomp.to_i

  if prices[item_name].nil?
    puts "Whats the price of a #{item_name}?"
    prices[item_name] = gets.chomp.to_f
  end

  total_cost = 0.0
  sub_total = 0.0


  prices.each do |name ,price|
    sub_total = number_of_products[name] *price
    total_cost = total_cost + (sub_total)
  end

  puts "You just add #{number_of_products[item_name]} #{item_name}[s] priced at $#{prices[item_name]} each \nThis will add $#{sub_total} to your cart "

  puts "\nDo you want to continue shopping?(y/n) \nType 'n' when your finshed shopping"
  finshed_ = gets.chomp
  if finshed_.downcase == 'n'
    break
  end

end
puts "Your cart\n-----------------"
prices.each do |name ,price|
  subtotal = number_of_products[name] *price
  puts "#{number_of_products[name]} #{name}[s] priced at $#{price} each cost: $#{subtotal} "
end
puts "Your total cost is $#{total_cost}"
