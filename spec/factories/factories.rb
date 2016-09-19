FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "example#{n}@gmail.com" }
    password 'example0000'
    password_confirmation 'example0000'
  end

  factory :post do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraph
    user
  end
end