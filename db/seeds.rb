puts "Resetting database..."
Place.destroy_all
Reservation.destroy_all
User.destroy_all

puts "Creating DataBase..."

puts "Creating users..."

admin1 = User.create!(
  email: "jean.damien@mail.com",
  password: "123456",
  admin: true
)
puts "Created #{admin1.email}"

admin2 = User.create!(
  email: "jean.jean@mail.com",
  password: "123456",
  admin: true
)
puts "Created #{admin2.email}"


user1 = User.create!(
  email: "hugo@mail.com",
  password: "123456"
)
puts "Created #{user1.email}"

user2 = User.create!(
  email: "dorian@mail.com",
  password: "123456"
)
puts "Created #{user2.email}"

user3 = User.create!(
  email: "amelie@mail.com",
  password: "123456"
)
puts "Created #{user3.email}"

user4 = User.create!(
  email: "lara@mail.com",
  password: "123456"
)
puts "Created #{user4.email}"

user5 = User.create!(
  email: "pierre@mail.com",
  password: "123456"
)
puts "Created #{user5.email}"

puts "Creating places..."

place1 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 15, 
  size: 84, 
  address: "82 Rue de Porte d'Orange", 
  city: "Paris 15th",
  user_id: admin1.id
)
puts "Created #{place1.address}"

place2 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 15, 
  size: 84, 
  address: "115 rue Ernest Renand", 
  city: "Paris 7th",
  user_id: admin1.id
)
puts "Created #{place2.address}"

place3 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 15, 
  size: 84, 
  address: "41-43 Rue Camille-Desmoulins", 
  city: "Paris 11th",
  user_id: admin1.id
)
puts "Created #{place3.address}"

place4 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork",
  max_capacity: 15, 
  size: 84, 
  address: "82 Rue de Porte d'Orange", 
  city: "Paris 7th",
  user_id: admin1.id
)
puts "Created #{place4.address}"

place5 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 15, 
  size: 84, 
  address: "115 rue Ernest Renand", 
  city: "Paris 7th",
  user_id: admin2.id
)
puts "Created #{place5.address}"

place6 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 12, 
  size: 84, 
  address: "41-43 Rue des jambons fromages", 
  city: "Paris 7th",
  user_id: admin2.id
)
puts "Created #{place6.address}"

place7 = Place.create!(
  categories: ["office", "meeting room"], 
  tags:["parking", "bike storage", "natural light", "roof terrace", "outdoor spaces"], 
  price_per_day: 48, 
  renter: "WeWork", 
  max_capacity: 15, 
  size: 84, 
  address: "41-43 Rue Camille-Desmoulins", 
  city: "London",
  user_id: admin2.id
)
puts "Created #{place7.address}"

puts "Creating reservations..."

reservation1 = Reservation.create!(
  user_id: user1.id,
  place_id: place1.id,
  start_date: Date.tomorrow,
  end_date: Date.new(2021,12,5),
  total_price: place1.price_per_day * 5,
  status: "pending"
)
puts "#{reservation1.user.email} made a reservation for #{reservation1.place.address}"

reservation2 = Reservation.create!(
  user_id: user2.id,
  place_id: place2.id,
  start_date: Date.tomorrow,
  end_date: Date.new(2022,01,01),
  total_price: place2.price_per_day * 31,
  status: "validated"
)
puts "#{reservation2.user.email} made a reservation for #{reservation2.place.address}"

reservation3 = Reservation.create!(
  user_id: user3.id,
  place_id: place2.id,
  start_date: Date.new(2022,01,01),
  end_date: Date.new(2022,02,01),
  total_price: place2.price_per_day * 31,
  status: "validated"
)
puts "#{reservation3.user.email} made a reservation for #{reservation3.place.address}"


puts "Done"