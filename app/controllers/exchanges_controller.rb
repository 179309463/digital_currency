class ExchangesController < BaseController

  # GET /exchanges
  # GET /exchanges.json
  def index
    @q = Exchange.ransack(params[:q])
    @exchanges = @q.result.page(params[:page]).all
    respond_to do |format|
      format.html
      format.json
      format.js
      format.pdf
    end
  end

  # GET /exchanges/1
  # GET /exchanges/1.json
  def show
    @exchange = Exchange.find(params[:id])
    @exchange_notices = ExchangeNotice.where(exchange_id: @exchange.id).page(params[:page_exchange_notice]).per(5).all
    @exchange_trade_ranks = ExchangeTradeRank.where(exchange_id: @exchange.id).page(params[:page_exchange_trade_rank]).per(10).all
    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

end
