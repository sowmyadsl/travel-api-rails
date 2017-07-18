FactoryGirl.define do
  factory :user do
    
  end
  factory :place do
    city(Faker::Address.city)
    country(Faker::Address.country)
  end
end
