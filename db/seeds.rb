puts "Clearing old data..."
Card.destroy_all
Collection.destroy_all

puts "Seeding Collection"

p = Collection.new(card_type: "Pokemon")
s = Collection.new(card_type: "Soccer")
h = Collection.new(card_type: "Hockey")
b = Collection.new(card_type: "Basketball")



puts "Seeding Card"

p.cards.build(name: "Charizard", image: "https://photos.app.goo.gl/KJBMzXJfvKBruoG76", year: "2019", description: "Charizard Ex")
p.cards.build(name: "Tentacruel", image: "https://photos.app.goo.gl/SVok59xR3Fs6KwYy9", year: "2019", description: "Tentacruel Holo Stage 1")
p.save

s.cards.build(name: "Aaron Wan-Bissaka", image: "https://photos.app.goo.gl/3iZQxBeQnES8dvVi8", year: "2021", description: "Auto Prizm")
s.cards.build(name: "Brandon Williams", image: "https://photos.app.goo.gl/NujgCQEirRN98mKY9", year: "2021", description: "Rookie Auto")
s.save

h.cards.build(name: "Spencer Foo", image: "https://photos.app.goo.gl/w4bTwphUEdR87n6c7", year: "2020", description: "Young Guns")
h.cards.build(name: "Mikhail Vorobyev", image: "https://photos.app.goo.gl/a7ECUACsjR74DUu5A", year: "2019", description: "Marque Rookie")
h.save

b.save


puts "done"