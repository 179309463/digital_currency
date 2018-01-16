class ExchangesController < ApplicationController

  # GET /exchanges
  # GET /exchanges.json
  def index
    @exchanges = Exchange.page(params[:page]).all
  end

  # GET /exchanges/1
  # GET /exchanges/1.json
  def show
    @exchange = Exchange.find(params[:id])
  end

end
