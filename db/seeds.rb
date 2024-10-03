# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear the database
Car.destroy_all
Owner.destroy_all
Review.destroy_all
Favourite.destroy_all
puts "Cleared existing records."

owner1 = Owner.find_or_create_by!(nickname: 'Alice')
owner2 = Owner.find_or_create_by!(nickname: 'Bob')
owner3 = Owner.find_or_create_by!(nickname: 'Bodfdfdfb')
puts "Owners created"

Car.create!([
  {
    brand: 'Toyota',
    model: 'Camry',
    year: 2021,
    fuel: 'Gasoline',
    owner: owner1
  },
  {
    brand: 'Tesla',
    model: 'Model 3',
    year: 2022,
    fuel: 'Electric',
    owner: owner2
  },
  {
    brand: 'Tesla2',
    model: 'Model 3',
    year: 2022,
    fuel: 'Electric',
    owner: owner3
  }
])
puts "#{Car.count} cars created"
