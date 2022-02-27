FactoryBot.define do
  factory :product do
    sequence(:title) { FFaker::Product.product_name }
    sequence(:description) { FFaker::Lorem.paragraph }
    price { rand(1..100).to_f }
    images { nil }
  end
end
