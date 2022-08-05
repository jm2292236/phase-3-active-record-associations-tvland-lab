puts "🌱 Seeding data..."

Network.create(call_letters: "NBC")
Network.create(call_letters: "CBS")
Network.create(call_letters: "MGM")

hopkins = Actor.create(first_name: "Anthony", last_name: "Hopkins");
jerry = Actor.create(first_name: "Jerry", last_name: "Seinfeld");
kramer = Actor.create(first_name: "Michael", last_name: "Williams");

seinfeld = Show.create(name: "Seinfeld", network_id: 1)
joeblack = Show.create(name: "Joe Black", network_id: 2)

Character.create(name: "Jerry", actor_id: jerry.id, show_id: seinfeld.id, catchphrase: "Krameeer!")
Character.create(name: "Kramer", actor_id: kramer.id, show_id: seinfeld.id, catchphrase: "I'm Kramer baby!")
Character.create(name: "Mr. Joe", actor_id: hopkins.id, show_id: joeblack.id, catchphrase: "Do you know Joe Black?")

puts "🌱 Done Seeding data..."
