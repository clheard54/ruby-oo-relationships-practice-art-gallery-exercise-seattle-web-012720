require_relative "../config/environment.rb"

picasso = Artist.new("Picasso", 17)
van_gogh = Artist.new("Van Gogh", 34)
okeefe = Artist.new("O'Keefe", 22)
agnes = Artist.new("Agnes Martin", 25)

met = Gallery.new("Metropolian", "New York")
moma = Gallery.new("MoMA", "New York")
natl = Gallery.new("National Gallery of Art", "DC")

blue = Painting.new("blue", 1000, picasso, met)
red = Painting.new("red", 5000, picasso, moma)
yellow = Painting.new("yellow", 4000, agnes, moma)
green = Painting.new("green", 3209, van_gogh, natl)

binding.pry

puts "Bob Ross rules."
