json.extract! exchange, :id, :icon, :name, :memo, :description, :web_site, :country, :price_memo, :support_type, :support_type_text, :stars, :trade_pair_count, :rank, :created_at, :updated_at
json.url exchange_url(exchange, format: :json)
