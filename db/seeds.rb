# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "管理人",
             email: "admin@example.com",
             password:  "test.01",
             password_confirmation: "test.01",
             admin: true)

User.create!(name:  "会員",
             email: "test@example.com",
             password:  "test.01",
             password_confirmation: "test.01",
             admin: false)
