class Exchange < ApplicationRecord
  has_many :seeks, inverse_of: :exchange
  accepts_nested_attributes_for :seeks, allow_destroy: true
end
