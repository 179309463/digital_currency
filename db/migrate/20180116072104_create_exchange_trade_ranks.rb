class CreateExchangeTradeRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :exchange_trade_ranks do |t|
      t.references :exchange, foreign_key: true
      t.date :stat_date
      t.integer :trade_count
      t.integer :rank

      t.timestamps
    end
  end
end
