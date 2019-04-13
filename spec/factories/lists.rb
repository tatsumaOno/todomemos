FactoryBot.define do
  factory :list do
    title {"hoge!"}
    user
    created_at {Faker::Time.between(2.days.ago,Time.now, :all)}
  end
end
