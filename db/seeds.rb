# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(name: "rerickson", password: "password")
Post.create(text: "Welcome to Get Hakt!", user_id: u.id)
Post.create(text: "You are not safe here...", user_id: u.id)