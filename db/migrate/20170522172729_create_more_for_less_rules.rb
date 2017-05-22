class CreateMoreForLessRules < ActiveRecord::Migration[5.1]
  def change
    create_table :more_for_less_rules do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :eligible_qtty
      t.integer :collectible_qtty

      t.timestamps
    end
  end
end
