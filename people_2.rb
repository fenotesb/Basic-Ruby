people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}

#How many people are in hash?
num_of_people = 0
people.each do |person, key|
  num_of_people +=1
end
puts "There are #{num_of_people} people in the database"

#What are the names of all the people in the hash?
counter = 0
names = []
print "The names of the people in the database are "
people.each do |person, key|
  names.push(person)
  counter +=1
  if counter <4
    print "#{person}, "
  elsif counter == 4
    print "and #{person}."
  end
end

#What is the phone number of Alia O'Conner PhD?
puts "\nAlia O'Conner PhD phone number is #{people["Alia O'Conner PhD"]["phone"]}"

#How many children does Brian Heller have?

puts "Brian Heller has #{number_of_childern = people["Brian Heller"]["children"].length()} child"

#What company does Dr. Adela DuBuque work for?

puts "Dr. Adela DuBuque works for #{people["Dr. Adela DuBuque"]["company"]}"

# First Name, Last Name, Age, Income, Household Size, Gender, Education
# Jon, Smith, 25, 50000, 1, Male, College
# Jane, Davies, 30, 60000, 3, Female, High School
# Sam, Farelly, 32, 80000, 2, Unspecified, College
# Joan, Favreau, 35, 65000, 4, Female, College
# Sam, McNulty, 38, 63000, 3, Male, College
# Mark, Minahan, 48, 78000, 5, Male, High School
# Susan, Umani, 45, 75000, 2, Female, College
# Bill, Perault, 24, 45000, 1, Male, Did Not Complete High School
# Doug, Stamper, 45, 75000, 1, Male, College
# Francis, Underwood, 52, 100000, 2, Male, College

people_info =
  [ {name: "Jon Smith", Age: 25, Income: 50000, Household_Size: 1, Gender:"Male", Education: "College" },
    {name: "Jane Davies" ,Age: 30, Income: 60000, Household_Size: 3, Gender: "Female", Education:"Highschool"},
    {name: "Sam Farelly" , Age: 32, Income: 80000, Household_Size: 2, Gender:"Unspecified", Education: "College" },
    {name: "Joan Favreau", Age: 35, Income: 65000, Household_Size: 4, Gender: "Female", Education:"College"},
    {name: "Sam McNulty" , Age: 38, Income: 63000, Household_Size: 3, Gender:"Male", Education: "College" },
    {name: "Mark Minahan" , Age: 48, Income: 78000, Household_Size: 5, Gender: "Male", Education:"Highschool"},
    {name: "Susan Umani" , Age: 45, Income: 75000, Household_Size: 2, Gender:"Female", Education: "College" },
    {name: "Bill Perault" , Age: 24, Income: 45000, Household_Size: 1, Gender: "Male", Education:"Did Not Complete High School"},
    {name: "Doug Stamper" , Age: 45, Income: 75000, Household_Size: 1, Gender: "Male", Education:"College"},
    {name: "Francis Underwood" , Age: 52, Income: 100000, Household_Size: 2, Gender:"Male", Education: "College" },
]

# Sample Output:
#
# Average Age: 37.4
# Average Income: 69100.0
# Average Household Size: 2.4
# Female %: 30.0
# Male %: 60.0
# Unspecified Gender %: 10.0
# College %: 70.0
# High School %: 20.0
# Did Not Finish High School %: 10.0
#
total_income = 0.0
num_Female = 0.0
num_Unspecified = 0.0
college_grad = 0.0
highschool_grad =0.0
did_Not_Finish = 0.0
sum_of_people_ages = 0.0
num_Male = 0.0
total_household_size = 0.0

people_info.each do |person|

  total_income += person[:Income]

  sum_of_people_ages += person[:Age]

  total_household_size += person[:Household_Size]

  if person[:Gender] == "Female"
    num_Female += 1
  elsif person[:Gender] == "Male"
    num_Male += 1
  else
    num_Unspecified +=1
  end

  if person[:Education] == "College"
    college_grad +=1
  elsif person[:Education] == "Highschool"
    highschool_grad +=1
  else
    did_Not_Finish += 1
  end
end


puts "\nThese are the statistics of the second data set of people "

puts "Average Age: #{sum_of_people_ages/people_info.length}"

puts "Average Income: #{total_income/people_info.length}"

puts "Average Household Size: #{total_household_size/people_info.length}"

puts "Female % : #{(num_Female/people_info.length)*100}"

puts "Male % : #{(num_Male/people_info.length)*100}"

puts "Unspecified % : #{(num_Unspecified/people_info.length)*100}"

puts "College % : #{(college_grad/people_info.length)*100}"

puts "Highschool % : #{(highschool_grad/people_info.length)*100}"

puts "Did Not Finish % : #{(did_Not_Finish/people_info.length)*100}"

