class PagesController < BaseController
  include HighVoltage::StaticPage
	
  def index
	@currencies = Array.new(20, 
		{
			order: 1,
			id: 'bitcoin',
			image: "https://static.eastcoinbay.com/Coin/7033f2f2c2a16094bbb3bafc47205ba8_small.png",
			name: "BTC-比特币",
			marketcap: {
				usd: 176624485715,
				cny: 1131509375135,
				btc: 16898432
			},
			price: {
				usd: 10500,
				cny: 67266,
				btc: 1
			},
          	volCount: 1682,
          	volume: {
          		usd: 5625949541.07999,
          		cny: 36041519242.9921,
          		btc: 538855.452734885
          	},
            change: -5.51,
            data: [12256,11131,11131,10330,10396,11237,11255,11715,11953,11518,11636,12002,11907,11619,12774,12999,13198,13222,12533,12125,11625,11626,11843,11964,10868,10940,10892,10596]
        }
    )
  end   

end	
