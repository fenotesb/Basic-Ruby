
puts "Welcome to rock paper scissors \nToday we will be playing best three out of five\n\n"
cpu_choices = ["rock","paper","scissors"]
round_count = 1
cpu_win_count =0
user_win_count = 0


while user_win_count != 3 && cpu_win_count != 3

  puts "Let's get round #{round_count} started"
  puts "Please enter your choice \nType in r for rock, p for paper, and s for scissors\n\n"

 
  user_choice = gets.chomp
  random_choice = cpu_choices[rand(3)]
  cpu_choice =random_choice[0]

  while user_choice != 'r'&& user_choice != 'p' && user_choice != 's'
    puts "Sorry " + user_choice +" is an invalid entry\nPlease enter 'r' for rock, 'p' for p or 's' for scissors\n\n"
    user_choice = gets.chomp
  end


  if cpu_choice == user_choice
     puts "This round is a draw. \nYou chose:" + user_choice+ " and the cpu chose: " +random_choice+ "\n\n"
     round_count += 1
   else

    if cpu_choice == 'r' && user_choice == 'p'
      puts "You win this round \nYou chose: "+user_choice+ "aper and the cpu chose: " +cpu_choice+ "ock\n\n"
      user_win_count +=1
      round_count += 1


    elsif cpu_choice == 'p' && user_choice == 's'
      puts "You win this round \nYou chose: "+user_choice+ "cissors and the cpu chose: " +cpu_choice+ "aper\n\n"
      user_win_count +=1
      round_count += 1

    elsif cpu_choice == 's' && user_choice == 'r'
      puts "You win this round \nYou chose: "+user_choice+ "ock and the cpu chose: " +cpu_choice+ "cissors\n\n"
      user_win_count +=1
      round_count += 1

    elsif cpu_choice == 'r' && user_choice == 's'
      puts "You lose this round \nYou chose: " + user_choice+ "cissors and the cpu chose: "+cpu_choice+ "ock\n\n"
      cpu_win_count +=1
      round_count += 1

    elsif cpu_choice == 's' && user_choice == 'p'
      puts "You lose this round \nYou chose: " + user_choice+ " and the cpu chose: "+cpu_choice+ "cissors\n\n"
      cpu_win_count +=1
      round_count += 1


    elsif cpu_choice == 'p' && user_choice == 'r'
      puts "You lose this round \nYou chose: " + user_choice+ "ock and the cpu chose: "+cpu_choice+ "aper\n\n"
      cpu_win_count +=1
      round_count += 1
    else
      break
    end
  end

end

puts "Thanks for playing \nYour game took #{round_count} rounds to complete. You won #{user_win_count} rounds and the computer won #{cpu_win_count}"
