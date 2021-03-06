# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'
require 'faker'

print "setup exchanges data"
Exchange.destroy_all
(1..100).each do |index|
	exchange = Exchange.new({
		icon: 				FFaker::Avatar.image,
		name: 				FFaker::CompanyCN.name,
		memo: 				FFaker::LoremCN.sentence,
		description: 		FFaker::LoremCN.paragraph,
		web_site: 			FFaker::Internet.http_url,
		country: 			FFaker::Address.country,
		price_memo: 		FFaker::LoremCN.paragraph,
		support_type: 		Exchange.support_type.values[Faker::Number.between(0, 2)],
		stars: 				Faker::Number.between(1, 5),
		trade_pair_count: 	Faker::Number.between(1, 50),
		rank: 				Faker::Number.between(1, 10)
	})
	(1..10).each do |index|
		exchange.exchange_notices.build({
			title: 			FFaker::LoremCN.sentence,
			href: 			FFaker::Internet.http_url
		})
	end
	(1..100).each do |index|
		exchange.exchange_trade_ranks.build({
			stat_date: 		FFaker::Time.date,
			trade_count: 	Faker::Number.between(1000, 5000),
			rank: 			Faker::Number.between(1, 10)
		})
	end
	exchange.save
end