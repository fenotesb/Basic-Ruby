Required_crew_size = 6

avaiable_members = [
  :captain,
  :first_mate,
  :second_mate,
  :navigator,
  :first_engineer,
  :info_systems_tech,
  :environmental_control_tech,
  :lead_maintenance,
  :first_medical,
  :first_food_ops,
  :combat_systems_officer,

]

random_members_chosen = avaiable_members.sample(Required_crew_size)

puts "\*\*\*Automated Flight Crew Advice:\*\*\*"

random_members_chosen.each do |chosen_one|
  puts "Use the #{chosen_one.to_s.gsub("\_", " ")}!"
end
puts " "

[
  :captain,
  :navigator,
  :lead_maintenance
].each do |required_members|
  if !random_members_chosen.include?(required_members)
    puts "WARNING! You will be without a #{required_members.to_s.gsub("\_", " ")}"
  end
end
