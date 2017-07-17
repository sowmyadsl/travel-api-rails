# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.destroy_all


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_places
  end

  def generate_places
    20.times do |index|
    Place.create!(
        city: Faker::Address.city,
        country: Faker::Address.country,
        image_file_name: Faker::Avatar.image
        )
    end
  end
end

Seed.begin
p "Created #{Place.count} places"
