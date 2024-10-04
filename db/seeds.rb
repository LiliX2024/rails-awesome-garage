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
# Clear existing records
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all
puts "Cleared existing records."

# Owners
owner1 = Owner.find_or_create_by!(nickname: 'Alice')
owner2 = Owner.find_or_create_by!(nickname: 'Bob')
owner3 = Owner.find_or_create_by!(nickname: 'Charlie')
owner4 = Owner.find_or_create_by!(nickname: 'Dave')
owner5 = Owner.find_or_create_by!(nickname: 'Eve')
owner6 = Owner.find_or_create_by!(nickname: 'Frank')
owner7 = Owner.find_or_create_by!(nickname: 'Grace')
owner8 = Owner.find_or_create_by!(nickname: 'Hank')
owner9 = Owner.find_or_create_by!(nickname: 'Ivy')
owner10 = Owner.find_or_create_by!(nickname: 'Jack')
puts "#{Owner.count} owners created"

# Cars with real image URLs
# Clear existing records
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all
puts "Cleared existing records."

# Owners
owner1 = Owner.find_or_create_by!(nickname: 'Alice')
owner2 = Owner.find_or_create_by!(nickname: 'Bob')
owner3 = Owner.find_or_create_by!(nickname: 'Charlie')
owner4 = Owner.find_or_create_by!(nickname: 'Dave')
owner5 = Owner.find_or_create_by!(nickname: 'Eve')
owner6 = Owner.find_or_create_by!(nickname: 'Frank')
owner7 = Owner.find_or_create_by!(nickname: 'Grace')
owner8 = Owner.find_or_create_by!(nickname: 'Hank')
owner9 = Owner.find_or_create_by!(nickname: 'Ivy')
owner10 = Owner.find_or_create_by!(nickname: 'Jack')
puts "#{Owner.count} owners created"

# Cars
cars = Car.create!([
  {
    brand: 'Toyota',
    model: 'Camry',
    year: 2021,
    fuel: 'Gasoline',
    owner: owner1,
    image_url: 'https://cdn.pixabay.com/photo/2023/12/13/07/58/car-8446529_1280.jpg'
  },
  {
    brand: 'Tesla',
    model: 'Model 3',
    year: 2022,
    fuel: 'Electric',
    owner: owner2,
    image_url: 'https://cdn.pixabay.com/photo/2021/01/21/11/09/tesla-5937063_1280.jpg'
  },
  {
    brand: 'Ford',
    model: 'Mustang',
    year: 2019,
    fuel: 'Gasoline',
    owner: owner3,
    image_url: 'https://cdn.pixabay.com/photo/2016/05/06/17/05/car-1376248_1280.jpg'
  },
  {
    brand: 'Chevrolet',
    model: 'Bolt',
    year: 2023,
    fuel: 'Electric',
    owner: owner4,
    image_url: 'https://cdn.pixabay.com/photo/2015/12/28/23/35/auto-1112183_1280.jpg'
  },
  {
    brand: 'BMW',
    model: 'X5',
    year: 2020,
    fuel: 'Diesel',
    owner: owner5,
    image_url: 'https://cdn.pixabay.com/photo/2020/06/06/01/44/bmw-x5-5264945_1280.jpg'
  },
  {
    brand: 'Mercedes',
    model: 'C-Class',
    year: 2021,
    fuel: 'Gasoline',
    owner: owner6,
    image_url: 'https://cdn.pixabay.com/photo/2017/03/27/14/02/auto-2178926_1280.jpg'
  },
  {
    brand: 'Audi',
    model: 'Q5',
    year: 2022,
    fuel: 'Diesel',
    owner: owner7,
    image_url: 'https://cdn.pixabay.com/photo/2022/07/26/16/33/audi-7346235_1280.jpg'
  },
  {
    brand: 'Honda',
    model: 'Civic',
    year: 2020,
    fuel: 'Gasoline',
    owner: owner8,
    image_url: 'https://cdn.pixabay.com/photo/2022/04/26/02/57/traffic-7157269_1280.jpg'
  },
  {
    brand: 'Nissan',
    model: 'Leaf',
    year: 2023,
    fuel: 'Electric',
    owner: owner9,
    image_url: 'https://cdn.pixabay.com/photo/2015/08/11/22/33/nissan-885308_1280.jpg'
  },
  {
    brand: 'Hyundai',
    model: 'Kona',
    year: 2022,
    fuel: 'Electric',
    owner: owner10,
    image_url: 'https://cdn.pixabay.com/photo/2020/03/24/16/44/hyundai-4964667_1280.jpg'
  }
])
puts "#{Car.count} cars created"

# Favourites


# Reviews
Review.create!([
  { car: cars[0], comment: "Smooth ride and comfortable interior!", rating: 5 },
  { car: cars[1], comment: "Incredible acceleration and tech!", rating: 5 },
  { car: cars[2], comment: "Feels powerful and looks great.", rating: 4 },
  { car: cars[3], comment: "Good range for an electric car.", rating: 4 },
  { car: cars[4], comment: "Luxury feel and superb handling.", rating: 5 },
  { car: cars[5], comment: "Very comfortable with a lot of tech features.", rating: 4 },
  { car: cars[6], comment: "Reliable and fuel-efficient.", rating: 5 },
  { car: cars[7], comment: "Perfect for city driving, and eco-friendly.", rating: 5 },
  { car: cars[8], comment: "Great electric car with a decent range.", rating: 4 },
  { car: cars[9], comment: "Compact and easy to maneuver.", rating: 4 }
])
puts "#{Review.count} reviews created"
