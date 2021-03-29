# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

OutfitClothing.destroy_all
Closet.destroy_all
User.destroy_all
Outfit.destroy_all
Clothing.destroy_all

User.create(name: "Radiyah", gender: "f", img_url: )
User.create(name: "Mathew", gender: "m", img_url: )

5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: , description: Faker::Restaurant.description, category: "Shirts", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: , description: Faker::Restaurant.description, category: "Pants", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: , description: Faker::Restaurant.description, category: "Shoes", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: , description: Faker::Restaurant.description, category: "Accessories", gender: Faker::Gender.short_binary_type)
end


# Clothing.create(name: , img_url: , description: , category: "Shirts", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shirts", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shirts", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shirts", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shirts", gender: "")

# Clothing.create(name: , img_url: , description: , category: "Shoes", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shoes", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shoes", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shoes", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Shoes", gender: "")

# Clothing.create(name: , img_url: , description: , category: "Pants", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Pants", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Pants", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Pants", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Pants", gender: "")

# Clothing.create(name: , img_url: , description: , category: "Accessories", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Accessories", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Accessories", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Accessories", gender: "")
# Clothing.create(name: , img_url: , description: , category: "Accessories", gender: "")

Closet.create(user_id: User.all.sample.id, clothing_id: Clothing.all.sample.id)


Outfit.create(name: , user_id: User.all.sample.id)


OutfitClothing.create(outfit_id: Outfit.all.sample.id, clothing_id: Clothing.all.sample.id)


puts "Seeded Successfully"