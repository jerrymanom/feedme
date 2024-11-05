# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Category.create!([
#     { name: 'Abarrotes', status: true},
#     { name: 'Cereales y granos', status: true},
#     { name: 'Frutas', status: true},
#     { name: 'Verduras', status: true},
#     { name: 'Orígen animal', status: true}
# ])

# Product.create!([
#     { name: "Sabritas", amount: 2, category_id: 1, status: true},
#     { name: "Pan", amount: 1, category_id: 1, status: true},
#     { name: "Platano", amount: 3, category_id: 3, status: true},
#     { name: "Manzana", amount: 0, category_id: 3, status: true},
#     { name: "Fresa", amount: 2, category_id: 3, status: true},
#     { name: "Frijol", amount: 1, category_id: 2, status: true},
#     { name: "Arroz", amount: 4, category_id: 2, status: true},
#     { name: "Lentejas", amount: 0, category_id: 2, status: true}
# ])
