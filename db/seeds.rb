# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pizza_east =  {name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
clos_maggiore = { name: 'Clos Maggiore', address: '33 King St, London WC2E 8JD', category: 'french' }
koya_ko = { name: 'Koya Ko', address: '10 Broadway Market Mews London E8 4TS', category: 'japanese' }
gloria = { name: 'Gloria', address: '54-56 Great Eastern St', category: 'italian' }
hunan = { name: 'Hunan', address: '    51 Pimlico Road London SW1W 8NE', category: 'chinese' }

[pizza_east, clos_maggiore, koya_ko, gloria, hunan].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
