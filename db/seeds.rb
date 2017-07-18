# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.destroy_all
Review.destroy_all


  200.times do |index|
  new_place = Place.create!(city: Faker::Address.city,
                            country: Faker::Address.country,
                            image_file_name: Faker::Avatar.image
                            )
    50.times do
      new_place.reviews.create!(author: Faker::Friends.character,
                                content: Faker::Lorem.characters(100)
                                )
  end
end



p "Created #{Place.count} places"
p "Created #{Review.count} reviews"
