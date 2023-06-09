class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.decimal :total
      t.decimal :unit_price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
