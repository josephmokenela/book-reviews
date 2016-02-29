# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all

Book.create! [
	{ name: "Macbeth", author: "William Shakespeare" },
	{ name: "Effective Java", author: "John Bloch" },
	{ name: "Programming in Java", author: "Joseph Mokenela" },
	{ name: "Metaprogramming in Ruby", author: "Peter Blank" },
	{ name: "Design Patterns", author: "Russ Olsen" }

]
