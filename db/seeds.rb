# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  ['apple', 50],
  ['banana', 10]
].each do |x, y|
  Product.find_or_create_by(:name => x) do |product|
    product.price = 10
  end
end