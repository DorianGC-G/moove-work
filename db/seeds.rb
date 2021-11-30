puts "Resetting database..."

Place.destroy_all
User.destroy_all

puts "Creating DataBase..."

puts "Creating users..."

admin1 = User.create!(
  email: "jean.damien@mail.com",
  password: "123456",
  admin: true
)

admin2 = User.create!(
  email: "jean.jean@mail.com",
  password: "123456",
  admin: true
)


user1 = User.create!(
  email: "hugo@mail.com",
  password: "123456"
)

user2 = User.create!(
  email: "dorian@mail.com",
  password: "123456"
)

user3 = User.create!(
  email: "amelie@mail.com",
  password: "123456"
)

user4 = User.create!(
  email: "lara@mail.com",
  password: "123456"
)

user5 = User.create!(
  email: "pierre@mail.com",
  password: "123456"
)

puts "Creating places..."

place1 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 15, 
  size: 84, 
  address: "82 Rue de Porte d'Orange", 
  city: "Paris 15th",
  user_id: admin1.id
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
  city: "Paris 7th",
  user_id: admin1.id
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
  city: "Paris 11th",
  user_id: admin1.id
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
  city: "Paris 7th",
  user_id: admin1.id
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
  city: "Paris 7th",
  user_id: admin2.id
}
place6 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.today, 
  max_capacity: 12, 
  size: 84, 
  address: "41-43 Rue des jambons fromages", 
  city: "Paris 7th",
  user_id: admin2.id
}
place7 = {
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  next_available: Date.new(2021,12,31), 
  max_capacity: 15, 
  size: 84, 
  address: "41-43 Rue Camille-Desmoulins", 
  city: "London",
  user_id: admin2.id
}

places = [place1, place2, place3, place4, place5, place6, place7]

places.each do |attributes|
  place = Place.create!(attributes)
  puts "Created #{place.address}"
end


puts "Done"