class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.monetize :price, currency: { present: false }
      t.integer :quantity
      t.integer :weight
      t.string :brand
      t.string :description

      t.timestamps null: false
    end
  end
end
