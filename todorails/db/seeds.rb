# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
aparna = Visitor.create(name: "aparna")
reid = Visitor.create(name: "reid")

work = Todolist.create(todoitem: "work")
eat = Todolist.create(todoitem: "eat")

aparna.todolists << work
reid.todolists << eat