# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  puts 'Cleaning database...'
  Garden.destroy_all
end

Garden.create!(
  name: 'Little Garden',
  banner_url: "https://www.thespruce.com/thmb/LLKNiIRgGlJ8XlQtBu-IkGQrQU0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/small-garden-ideas-and-inspiration-4101842-01-5e0462c2365e42de86a4f3ebc2152c1b.jpg"
)

Garden.create!(
  name: 'Other Garden',
  banner_url: "https://img.staticmb.com/mbcontent/images/uploads/2023/1/Front-Garden-Ideas.jpg"
)

puts 'Finished zo/'
