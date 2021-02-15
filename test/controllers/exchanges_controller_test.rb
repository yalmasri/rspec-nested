require 'test_helper'

class ExchangesControllerTest < ActionController::TestCase
  test 'creates exchange' do
    game1 = FactoryBot.create :game
    game2 = FactoryBot.create :game
    params = {
      game_id: game1.id,
      seeks_attributes: [
        { game_id: game2.id, exchange_type: 'product' },
        { price: 250, exchange_type: 'money' }
      ]
    }

    post :create, params: { exchange: params }

    assert_equal Exchange.count, 1
  end
end
