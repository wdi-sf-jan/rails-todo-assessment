l1 = Todolist.create(name: "List 1")
l2 = Todolist.create(name: "List 2")

l1.todos.create(content: "Do some stuff")
l1.todos.create(content: "Do some other stuff")

l2.todos.create(content: "Do some AWESOME stuff")
l2.todos.create(content: "Do some pretty awesome stuff")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
