#require 'pry'
puts "Welcome to my Guessing Game\nWould you like to play? \nPlease input 'y' for yes or 'n' for no"
yes_no = gets.chomp
#used a while loop to direct user input to y or n
while yes_no != 'y' && yes_no != 'n'
  puts "Sorry this input is invaild please try using 'y' for yes and 'n' for no"
  yes_no = gets.chomp
end
easy_hard = nil
#used if statment for easy and hard versions of the game 
if yes_no == 'y'
  puts "Would you like to play an easy or hard version? \nPlease enter 'e' for easy or 'h' for hard"
  easy_hard = gets.chomp
  cpu_guess = nil
  user_guess= nil
  #binding.pry
  while easy_hard != 'e' && easy_hard != 'h'
    puts "Sorry your input is invaild please type 'e' or 'h'"
    easy_hard = gets.chomp
  end
  if easy_hard == 'e'
    cpu_guess = rand(10)+1
    puts "Guess a number betwween 1 and 10"
  else
    cpu_guess = rand(20)+1
    puts "Guess a number betwween 1 and 20"
  end
  user_guess= gets.chomp
  while user_guess.to_i != cpu_guess

    puts "Sorry #{user_guess} is not right \nTry guessing another number"
    user_guess= gets.chomp
    #puts "this is the cpu_guess: #{cpu_guess}"
    #binding.pry
  end
  puts "You got it!!! \nThe cpu guessed #{user_guess} \nThanks for playing"
else
  #used else incase user selects no 
  puts "Sorry you don't want to play come back soon!"
end
