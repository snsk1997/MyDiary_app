FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {Faker::Internet.free_email}
    password              {'000000'}
    password_confirmation {password}
    birthday              {'1999''12''27'}
  end
end