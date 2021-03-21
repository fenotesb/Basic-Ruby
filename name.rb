
#This is an example of me using a method
def solicit_name
  puts "Please share the person's name:"
end

solicit_name
name = gets.chomp
while name == ''
  puts "You did not specify a name"
  solicit_name
  name = gets.chomp
end

puts "Hi #{name}!"
