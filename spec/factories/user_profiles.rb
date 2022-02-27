FactoryBot.define do
  factory :user_profile do
    sequence(:first_name) { "MyString" }
    sequence(:last_name) { "MyString" }
    sequence(:building_number) { 1 }
    sequence(:address) { "MyText" }
    sequence(:zip_code) { "MyString" }
    sequence(:city) { "MyString" }
    sequence(:date_of_birth) { "2022-02-27" }
    sequence(:avatar) { nil }
    association :user
  end
end
