100.times do
  character = Faker::RickAndMorty.chraracter
  location = Faker::RickAndMorty.location
  quote = Faker::RickAndMorty.quote
  Rick.create(character: character, location: location, quote: quote)
end