# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

jose = Student.create(first_name: "Jose", last_name: "Romero")
kelley = Student.create(first_name: "Kelley", last_name: "Matney")

js = SchoolClass.create(title: "JavaScript 101", room_number: 5)
design = SchoolClass.create(title: "Design", room_number: 12)
rb = SchoolClass.create(title: "Ruby 101", room_number: 21)
