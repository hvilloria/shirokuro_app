FactoryBot.define do
  factory :order do
    status { Order.statuses.keys.sample }
    number_reference { SecureRandom.uuid }
  end
end