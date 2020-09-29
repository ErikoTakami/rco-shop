FactoryBot.define do
  factory :user do
    nickname               { Faker::Internet.username }
    email                  { Faker::Internet.free_email }
    password               { "abc123" }
    password_confirmation  { password }
  end
end
