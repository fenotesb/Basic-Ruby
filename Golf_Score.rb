game_stats = [
  { par: 5, score: 7 },
  { par: 4, score: 5 },
  { par: 3, score: 3 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 2 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 5 },
  { par: 5, score: 7 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 4, score: 5 },
  { par: 4, score: 5 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 5, score: 6 }
]

point_total = 0
par_total = 0

game_stats.each do |hash_data|
  point_total += hash_data[:score]
  par_total += hash_data[:par]
end

puts "Total Strokes: #{point_total} "
puts "Total Par #{par_total}"

par = point_total - par_total

over_under = " "
if par >= 0
  over_under = "over"
else
  over_under = "under"
  par = par *-1
end
puts "Score: #{par} #{over_under} par!"
