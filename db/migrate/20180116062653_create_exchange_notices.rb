class CreateExchangeNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :exchange_notices do |t|
      t.references :exchange, foreign_key: true
      t.string :title
      t.string :href

      t.timestamps
    end
  end
end
