# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
    AdminUser.create!(email: 'admin@example.com', password: '123123', password_confirmation: '123123') 
    
    user1 = User.create(email: 'nada@nada.com', password: '123123', password_confirmation: '123123')
    user2 = User.create(email: 'hola@example.com', password: '123123', password_confirmation: '123123')

    5000.times do
        movie = Movie.create(title: Faker::Movie.title, year: (1970..2022).to_a.sample, user: [user1, user2].sample)

        puts "Movie: #{movie.title}, #{movie.year}"
    end
end
