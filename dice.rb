puts "Welcome to my dice game\nWould you like to play? \nPlease input 'y' for yes or 'n' for no"

yes_no = gets.chomp

while yes_no != 'y' && yes_no != 'n'
  puts "Sorry thats an invalid input please try again"
  yes_no = gets.chomp
end
if yes_no == 'y'
  roll = nil
  while roll != 'S'
    dice_outcome1 = rand(6)+1
    dice_outcome2 = rand(6)+1
    puts "You rolled a #{dice_outcome1} and a #{dice_outcome2} \nYou total roll is #{dice_outcome1.to_i+dice_outcome2.to_i}"
    puts "Would you like to roll again? \nPress enter to roll or 'S' to stop?"
    roll = gets.chomp
  end
end

puts "Thanks for playing \nCome Back soon!!!"
