FactoryGirl.define do  
  factory :business do
    company Faker::Company.name
    product Faker::Company.catch_phrase
    slogan Faker::Company.bs
    state Faker::Address.state
    city Faker::Address.city
    street_address Faker::Address.street_address
    zip Faker::Address.zip
  end
end