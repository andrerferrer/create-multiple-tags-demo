puts "Create some Restaurants"

amareleen = Restaurant.create! name: "Amareleen", address: "Gloria"
verdeen = Restaurant.create! name: "Verdeen", address: "Gloria"

amareleen.tags.create name: 'brazilian'
amareleen.tags.create name: 'dirty'
verdeen.tags << Tag.first

puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Done!"
