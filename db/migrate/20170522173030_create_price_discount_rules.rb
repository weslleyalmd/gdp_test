class CreatePriceDiscountRules < ActiveRecord::Migration[5.1]
  def change
    create_table :price_discount_rules do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :eligible_qtty
      t.decimal :new_price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
