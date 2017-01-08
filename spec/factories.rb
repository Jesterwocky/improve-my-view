require 'faker'
require 'date'

FactoryGirl.define do
  factory :user, aliases: [:owner, :author] do
    name { Faker::Name.first_name }
    email { Faker::Internet.email }
    password "password123"
  end

  factory :space do
    name { Faker::GameOfThrones.city }
    owner
  end

  factory :space_view do
    space
    owner
    # Below are the fields expected by paperclip in the DB
    image_file_name{ 'sample_space.jpg' }
    image_content_type { 'image/jpeg' }
    image_file_size { 1024 }
    image_updated_at { Date.today }
  end

  factory :improvement do
    space_view
    author
    description { Faker::StarWars.quote }
  end

  factory :ownership_type do
    type_id { Faker::Number.number(1) }
    name { Faker::StarWars.droid }
    description { Faker::StarWars.quote }
  end

  factory :ownership do
    space
    owner
    ownership_type
  end

  factory :space_type do
    type_id { Faker::Number.number(1) }
    name { Faker::Pokemon.name }
  end

  factory :space_type_association do
    space
    space_type
  end

end
