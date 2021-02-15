class Seek < ApplicationRecord
  enum exchange_type: %i[product money]

  with_options if: :product? do |obj|
    obj.validates(:game, presence: true)
  end

  with_options if: :money? do |obj|
    obj.validates(:price, presence: true, numericality: { greater_than: 0 })
  end

  belongs_to :exchange, inverse_of: :seeks
  belongs_to :game, inverse_of: :seeks, optional: true
end
