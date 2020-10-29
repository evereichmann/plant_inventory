class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :seller_name
      t.string :country_origin
      t.integer :units
      t.integer :total_price
      t.date :date_order
      t.date :date_shipped, default: 0000-00-00
      t.boolean :multiple

      t.timestamps
    end
  end
end
