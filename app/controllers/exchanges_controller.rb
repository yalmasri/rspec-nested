class ExchangesController < ApplicationController
  # POST /exchanges
  def create
    pp(exchange_params.to_h)
    @exchange = Exchange.new exchange_params
    if @exchange.save
      render(json: @exchange, status: 201)
    else
      render(json: { errors: @exchange.errors.full_messages }, status: 422)
    end
  end

  private

  def exchange_params
    params.require(:exchange).permit(
      :game_id,
      seeks_attributes: %i[id _destroy game_id exchange_type price]
    )
  end
end
