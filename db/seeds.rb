# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create([{ name: 'Brian Lau', quote: "I sayeth, Fly!", image: File.open(File.join(Rails.root, 'public', 'system', 'categories', 'images', '000', '000', '004', 'medium', '2015_Epicodus_Class_Picture_Funny.jpg'))}])
