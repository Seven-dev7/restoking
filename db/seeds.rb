# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'factory_bot_rails'
include FactoryBot::Syntax::Methods


def ten_users
  User.destroy_all
  create_list(:user_profile, 10)
  p '10 users'
end

def ten_products
  Product.destroy_all
  create_list(:product, 10)
  p '10 products'
end

ten_users
ten_products

#User.create!(email: 'email_1@email.fr', password: 'blablabla', username: 'user_1')
#p '1 user created'
