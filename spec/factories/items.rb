FactoryBot.define do
  factory :item do
    title { Faker::Lorem.word }
    artist { Faker::Artist.name }
    text { Faker::Lorem.sentence }
    genre_id { Faker::Number.between(from: 2, to: 19) }
    country { 'JP' }  
    format_id { Faker::Number.between(from: 2, to: 12) }
    status_id { Faker::Number.between(from: 2, to: 10) }
    price { '3000' }
    stock { '10' }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/dummy_box-8.png'), filename: 'dummy_box-8.png')
    end
  end
end
