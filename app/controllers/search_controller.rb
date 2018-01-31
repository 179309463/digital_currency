class SearchController < ApplicationController
	def index
		@results = [
			{
				type: "0",
				id: "bitcoin",
				name: "Bitcoin(BTC)",
				image: "//static.eastcoinbay.com/Coin/7033f2f2c2a16094bbb3bafc47205ba8_small.png"
			},
			{
				type: "1",
				id: "bitcoin-indonesia",
				name: "Bitcoin Indonesia",
				image: "//static.eastcoinbay.com/PlatImages/20170806/2be01053555e4b63ad46757f6adfeccb_15_15.png"
			}
		]
	end
end
