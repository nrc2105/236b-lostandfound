# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all
Type.delete_all

books = Type.create(title: "Books", description: "Hardcover and paperback books")
media = Type.create(title: "Media", description: "DVDs, CDs, etc")
odds_ends = Type.create(title: "Odds and ends", description: "Items that don't fit other categories")
textiles = Type.create(title: "Textiles", description: "Clothing such as shirts, pants, jackets, footwear and others")
tools = Type.create(title: "Tools", description: "Hammers, saws, screwdrivers, or anything used to fix and/or build")

owner_array = ["John", "Bill", "Steve", "Tom", "Jim"]
tools_array = ["hammer", "saw", "wrench", "pliers"]
tool_descriptions = ["clawhead hammer, blue handle", "rusty old hand saw", "chrome monkey wrench", "needle-nose pliers"]
books_array = ["Name of the Wind", "Dune", "Nemesis", "The Great Hunt", "A Wise Man's Fear", "The Eye of the World"]
book_descriptions = ["First book of the Kingkiller Chronicles by Patrick Rothfuss", "First book in the famous series by Frank Herbert",
					"Book two in the Wheel of Time series by Robert Jordan", "Isaac Asimov's take on ftl travel" ,
					"Book two of the Kingkiller Chronicles by Patrick Rothfuss", "Book one in the Wheel of Time series by Robert Jordan"]
odds_ends_array = ["button", "notebook", "remote controll", "roll of tape"]
odds_ends_descriptions = ["loose, round, black button", "composition notebook", "small Samsung controller, possibly for tv", "scotch tape"]
textiles_array = ["Winter jacket", "shirt", "jeans"]
textiles_descriptions = ["Orange ski jacket", "long sleaved and black shirt", "regular Lee blue jeans"]
media_array = ["AC/DC CD", "The Lion King", "Resevoir Dogs"]
media_description = ["Back in Black", "VHS copy of the movie", "DVD"]

tools_array.each_with_index do |tool, i|
	tools.items.create(title: tool, description: tool_descriptions[i], owner: owner_array.sample)
end

books_array.each_with_index do |book, i|
	books.items.create(title: book, description: book_descriptions[i], owner: owner_array.sample)
end

odds_ends_array.each_with_index do |odd, i|
	odds_ends.items.create(title: odd, description: odds_ends_descriptions[i], owner: owner_array.sample)
end

textiles_array.each_with_index do |text, i|
	textiles.items.create(title: text, description: textiles_descriptions[i], owner: owner_array.sample)
end

media_array.each_with_index do |med, i|
	media.items.create(title: med, description: media_description[i], owner: owner_array.sample)
end
