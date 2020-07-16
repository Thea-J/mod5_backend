# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BusinessOwner.all.destroy_all
o1 = BusinessOwner.create(last_name: "Fenty") 
o2 = BusinessOwner.create(last_name: "Carter")
o3 = BusinessOwner.create(last_name: "Winfrey") 

Business.all.destroy_all
b1 = Business.create(name: "Beauty", business_owner_id: 1)
b2 = Business.create(name: "Skin", business_owner_id: 2)
b3 = Business.create(name: "Hair", business_owner_id: 2)
b3 = Business.create(name: "Nails", business_owner_id: 3)


