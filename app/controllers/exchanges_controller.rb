class ExchangesController < ApplicationController

  # GET /exchanges
  # GET /exchanges.json
  def index
    @q = Exchange.ransack(params[:q])
    @exchanges = @q.result.page(params[:page]).all
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  # GET /exchanges/1
  # GET /exchanges/1.json
  def show
    @exchange = Exchange.find(params[:id])
  end

end
