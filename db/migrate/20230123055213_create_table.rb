class CreateTable < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :description
      t.string :product_name
      t.integer :product_price
      t.timestamps
    end
  end
end
