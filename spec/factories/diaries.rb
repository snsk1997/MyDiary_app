FactoryBot.define do
  factory :diary do
    title      {'Test'}
    content    {'TestTestTest'}
    record_day {'2020/10/10'}
    weather_id {2}
    association :user

    after(:build) do |diary|
      diary.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
