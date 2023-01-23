class AddFieldsToProduct < ActiveRecord::Migration[7.0]
  def change
      create_table :product do |t|
        t.string :description
        t.string :product_name
        t.integer :product_price
        t.timestamps
      end
    end

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
