puts "Resetting database..."

Place.destroy_all

puts "Creating DataBase..."

place1 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "82 Rue de Porte d'Orange", 
  city: "Paris 15th"
}
place2 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "115 rue Ernest Renand", 
  city: "Paris 7th"
}
place3 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "41-43 Rue Camille-Desmoulins", 
  city: "Paris 11th"
}
place4 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "82 Rue de Porte d'Orange", 
  city: "Paris 7th"
}
place5 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "115 rue Ernest Renand", 
  city: "Paris 7th"
}
place6 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "41-43 Rue Camille-Desmoulins", 
  city: "Paris 7th"
}

places = [place1, place2, place3, place4, place5, place6]

places.each do |attributes|
  place = Place.create!(attributes)
  puts "Created #{place.address}"
end

puts "Done"