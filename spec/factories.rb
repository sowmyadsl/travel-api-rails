FactoryGirl.define do
  factory :place do
    city(Faker::Address.city)
    country(Faker::Address.country)
  end
end
