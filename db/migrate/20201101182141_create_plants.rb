class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.integer :order_id
      t.string :name
      t.integer :unit_price
      t.date :arrival_date
      t.string :condition
      t.date :recovery_date, default: 0000-00-00
      t.boolean :sold
      t.integer :price

      t.timestamps
    end
  end
end
