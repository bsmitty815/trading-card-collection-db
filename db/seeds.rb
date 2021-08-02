puts "Clearing old data..."
Card.destroy_all
Collection.destroy_all

puts "Seeding Collection"

p = Collection.new(card_type: "Pokemon")
s = Collection.new(card_type: "Soccer")
h = Collection.new(card_type: "Hockey")
b = Collection.new(card_type: "Basketball")
ba = Collection.new(card_type: "Baseball")



puts "Seeding Card"

p.cards.build(name: "Charizard", image: "https://i.imgur.com/pqdA0kz.jpg", year: "2019", description: "Charizard Ex")
p.cards.build(name: "Tentacruel", image: "https://i.imgur.com/HaHDt4s.jpg", year: "2019", description: "Tentacruel Holo Stage 1")
p.save

s.cards.build(name: "Aaron Wan-Bissaka", image: "https://i.imgur.com/h6UsOlA.jpg", year: "2021", description: "Auto Prizm")
s.cards.build(name: "Brandon Williams", image: "https://i.imgur.com/JFzkAfc.jpg", year: "2021", description: "Rookie Auto")
s.save

h.cards.build(name: "Spencer Foo", image: "https://i.imgur.com/HppVgZ3.jpg", year: "2020", description: "Young Guns")
h.cards.build(name: "Mikhail Vorobyev", image: "https://i.imgur.com/8PxPG1W.jpg", year: "2019", description: "Marque Rookie")
h.save

b.save


puts "done"