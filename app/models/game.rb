class Game < ApplicationRecord
  has_many :exchanges, inverse_of: :game
  has_many :seeks, inverse_of: :game
end
