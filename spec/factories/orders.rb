FactoryBot.define do
  factory :order do
    status { Order.statuses.keys.sample }
    number_reference { SecureRandom.uuid }
    total { rand(20..300.5).round(2) }
  end
end