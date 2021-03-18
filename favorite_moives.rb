favorite_movies = [
  { title: 'The Big Lebowski', year_released: 1998, director: 'Joel Coen', imdb_rating: 8.2 },
  { title: 'The Shining', year_released: 1980, director: 'Stanley Kubrick', imdb_rating: 8.5 },
  { title: 'Troll 2', year_released: 1990, director: 'Claudio Fragasso', imdb_rating: 2.5 }
]

favorite_movies.each do |moive|
  puts "#{moive[:title]} has a rating of #{moive[:imdb_rating]} "
end

movie = {
  title: 'The Nutty Professor',
  cast: [
    {
      name: 'Eddie Murphy',
      characters: [
        'Sherman Klump',
        'Buddy Love',
        'Lance Perkins',
        'Papa Klump',
        'Mama Klump',
        'Grandma Klump',
        'Ernie Klump'
      ]
    },
    {
      name: 'Jada Pinkett Smith',
      characters: [
        'Carla Purty'
      ]
    }
  ]
}


movie[:cast][0][:characters].each do |character|
  puts "#{character } is a cast member on The Nutty Professor"
end
