# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do 
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Hipster.word)
end

20.times do 
  Scheme.create(scheme_name: Faker::Lorem.word, creator_id: rand(1..20), excerpt_id: rand(1..20))
end

20.times do 
  Excerpt.create(content: Faker::Hipster.sentences(2), writer_id: rand(1..20))
end

20.times do 
  ColorScheme.create(color_id: rand(1..100), scheme_id: rand(1..20))
end

20.times do 
  ExcerptScheme.create(excerpt_id: rand(1..20), scheme_id: rand(1..20))
end

100.times do 
  Color.create(color_name: Faker::Color.hex_color)
end
