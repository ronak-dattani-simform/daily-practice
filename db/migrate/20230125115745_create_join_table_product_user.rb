class CreateJoinTableProductUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :products, :users do |t|
      # t.index [:product_id, :user_id]
      t.index [:product_id, :user_id]
    end
  end
end
