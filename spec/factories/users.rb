require 'faker'

FactoryGirl.define do
  factory :user, aliases: [:owner] do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    password "password123"
  end
end
