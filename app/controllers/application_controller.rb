require 'json/ext'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_paper_trail_whodunnit

  before_action :set_global_infos

  def pjax_layout
    'pjax'
  end

  private 
    def set_global_infos
    	@globalinfo = {
    		virtual: 1151,
    		daibi: 601,
    		exchanges: 252,
    		vol24h: 1937.96,
    		volTotal: 33040.80,
    		gbi: 14324.07
    	}

    	@markets = [
    		{
    			id: "ticker_bitfinex_btc_usd",
    			href: "https://www.bitfinex.com/",
    			name: "BTC/Bitfinex",
    			num: 65760.67,
    			data: [74963,69215,69949,64859,65673,69645,69664,73802,74023,70970,72158,74451,74097,71692,79155,80295,81992,81890,77899,75842,72178,72454,73489,75000,67701,68396,67139,66349,65760.67]
    		},
    		{
    			id: "ticker_bitfinex_btc_usd",
    			href: "https://www.bitfinex.com/",
    			name: "BTC/Bitfinex",
    			num: 65760.67,
    			data: [74963,69215,69949,64859,65673,69645,69664,73802,74023,70970,72158,74451,74097,71692,79155,80295,81992,81890,77899,75842,72178,72454,73489,75000,67701,68396,67139,66349,65760.67]
    		},
    		{
    			id: "ticker_bitfinex_btc_usd",
    			href: "https://www.bitfinex.com/",
    			name: "BTC/Bitfinex",
    			num: 65760.67,
    			data: [74963,69215,69949,64859,65673,69645,69664,73802,74023,70970,72158,74451,74097,71692,79155,80295,81992,81890,77899,75842,72178,72454,73489,75000,67701,68396,67139,66349,65760.67]
    		}
    	]

    	@friendLinks = [
    		{href: "http://www.bitett.com", title: "比特头条"},
    		{href: "http://www.haoqkl.cn", title: "好区块链"},
    		{href: "http://www.coingogo.com/", title: "币源社区"},
    		{href: "http://www.bcex.ca/", title: "BCEX"},
    		{href: "http://uncoinex.com/", title: "澳洲U网"},
    		{href: "http://www.bibox.com/", title: "Bibox"},
    		{href: "http://www.btctrade.im/", title: "比特币交易网"},
    		{href: "http://www.bixingxing.com", title: "比特币导航"},
    		{href: "http://www.linkcoin.pro/", title: "linkcoin"},
    		{href: "http://topbtc.com/", title: "TopBtc"},
    		{href: "http://www.qukuaiwang.com.cn", title: "区块网"},
    		{href: "http://www.lun.bi/", title: "论币"},
    		{href: "http://www.block123.com/", title: "区块链导航"},
    		{href: "http://www.weilaicaijing.com/", title: "未来财经"},
    		{href: "https://www.epay.com", title: "易派支付"}
    	]
    end
end
