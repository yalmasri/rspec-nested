FactoryBot.define do
  factory :seek do
    game
    price { rand(1..500) }
  end
end
