# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Running db:seed"
if Section.count == 0
	%w(breakfast lunch dinner drinks).each do |name|
		puts "Creating section for #{name}"
		Section.create!(name: name)
	end
else
	puts "You already heve section in the DB!"
end
