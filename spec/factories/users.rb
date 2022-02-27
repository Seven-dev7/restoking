FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@example.com" }
    sequence(:username) { FFaker::Name.unique.name }
    sequence(:password) { 'blabla' }
  end
end
