require 'rails_helper'

describe "Exchanges", type: :request do
  let(:game1) { create :game }
  let(:game2) { create :game }
  let(:params) do
    {
      game_id: game1.id,
      seeks_attributes: [
        { game_id: game2.id, exchange_type: 'product' },
        { price: 250, exchange_type: 'money' }
      ]
    }
  end

  before do
    pp params
    post exchanges_path, params: { exchange: params }
  end

  it 'creates exchange' do
    expect(Exchange.count).to eq 1
  end

  it 'creates 2 seeks' do
    expect(Seek.count).to eq 2
  end
end
