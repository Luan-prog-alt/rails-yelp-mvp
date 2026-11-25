# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if Rails.env.development?
  # 1. Clean the database 🗑️
  puts "Cleaning database..."
  Restaurant.destroy_all
end

Restaurant.create!([
  { name: "Le Petit Bistro", address: "Rua Oscar Freire, 215", category: "french" },
  { name: "Bella Napoli", address: "Rua Augusta, 450", category: "italian" },
  { name: "Sakura Sushi Bar", address: "Rua da Liberdade, 780", category: "japanese" },
  { name: "Golden Dragon", address: "Av. Paulista, 1020", category: "chinese" },
  { name: "Bruxels Waffles & Beer", address: "Alameda Santos, 910", category: "belgian" }
])
