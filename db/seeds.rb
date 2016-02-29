# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Reviewer.destroy_all
Book.destroy_all

Book.create! [
	{ name: "Macbeth", author: "William Shakespeare" },
	{ name: "Effective Java", author: "John Bloch" },
	{ name: "Programming in Java", author: "Joseph Mokenela" },
	{ name: "Metaprogramming in Ruby", author: "Peter Blank" },
	{ name: "Design Patterns", author: "Russ Olsen" }

]

100.times {
	|index| Book.create! name: "Book#{index}", author: "Author#{index}"
}

macbeth = Book.find_by name: "Macbeth"

macbeth.notes.create! [
	{ title: "Wow", note: "Brilliant way to study the history of Macbeth" },
	{ title: "Great", note: "Shakespeare was a genious"}
]

reviewers = Reviewer.create! [
	{ name: "Joseph Mokenela", password: "pass" },
	{ name: "Joseph Mokenela, PhD", password: "password01"}
]

Book.all.each do |book|
	book.reviewer = reviewers.sample
	book.save!
end
