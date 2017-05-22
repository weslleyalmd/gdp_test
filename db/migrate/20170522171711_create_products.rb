class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :named_id
      t.string :name
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
