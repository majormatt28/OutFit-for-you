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

User.create(name: "Radiyah", gender: "f", img_url: "https://ca.slack-edge.com/T02MD9XTF-U01MS0E5UGM-b6e1d5ff3843-512", email: "r@r.com", password: "abc123")
User.create(name: "Mathew", gender: "m", img_url: "https://ca.slack-edge.com/T02MD9XTF-U01NN9ERSNM-3db34d69031b-512", email: "m@m.com", password: "abc123")

5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Shirt", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Pant", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Shoe", gender: Faker::Gender.short_binary_type)
end
5.times do 
    Clothing.create(name: Faker::Superhero.name, img_url: Faker::LoremFlickr.image(size: "50x60"), description: Faker::Restaurant.description, category: "Accessory", gender: Faker::Gender.short_binary_type)
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

5.times do
    Closet.create(user_id: User.all.sample.id, clothing_id: Clothing.all.sample.id)
end

5.times do 
    Outfit.create(name: Faker::Artist.name, user_id: User.all.sample.id)
end

5.times do 
    OutfitClothing.create(outfit_id: Outfit.all.sample.id, clothing_id: Clothing.all.sample.id)
end


puts "Seeded Successfully"