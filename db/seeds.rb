# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

lib_count = 

puts 'Gerando os bibliotecários....'
3.times do
  Librarian.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Name.unique.name
)
end
puts 'Gerando os bibliotecários.... [OK]'

puts 'Gerando os Livros...'

10.times do
  Book.create!(
    title: Faker::Book.title,
    author: Faker::Book.author,
    category: Faker::Book.genre
)
end
puts 'Gerando os Livros... [OK]'

puts 'Gerando os clientes...'
5.times do
  Client.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email 
)
end
puts 'Gerando os clientes... [OK]'

puts 'Gerando as reservas...'
10.times do
  Reservation.create!(
    book: Book.all.sample,
    librarian: Librarian.all.sample,
    client: Client.all.sample
  )
end
puts 'Gerando as reservas... [OK]'
  