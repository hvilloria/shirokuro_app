class Order < ApplicationRecord
  has_and_belongs_to_many :foods
  enum status: {initiated: 0, delivered: 1}
end
