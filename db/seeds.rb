# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all
Type.delete_all

type_array = Array.new
for i in 0..4
	t = "Type " + i.to_s
	d = "It's type " + i.to_s
	type_array << Type.create(title: t, description: d)
end

owner_array = ["John", "Bill", "Steve", "Tom", "Jim"]

for j in 0..19
	t = "Item " + j.to_s
	d = "It's item " + j.to_s
	o = owner_array[j % 5]
	type_array[j % 5].items.create(title: t, description: d, owner: o)
end
