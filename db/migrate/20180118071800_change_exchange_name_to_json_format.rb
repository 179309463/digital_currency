class ChangeExchangeNameToJsonFormat < ActiveRecord::Migration[5.1]
  def change
    remove_column :exchanges, :name, :string
    add_column :exchanges, :name_translations, :json, after: :icon
  end
end
