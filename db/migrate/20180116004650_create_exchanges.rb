class CreateExchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :exchanges do |t|
      t.string :icon
      t.string :name
      t.string :memo
      t.text :description
      t.string :web_site
      t.string :country
      t.string :price_memo
      t.string :support_type
      t.integer :stars
      t.integer :trade_pair_count
      t.integer :rank

      t.timestamps
    end
  end
end
