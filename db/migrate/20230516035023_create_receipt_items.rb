class CreateReceiptItems < ActiveRecord::Migration[7.0]
  def change
    create_table :receipt_items do |t|
      t.integer :quantity
      t.date :start_date
      t.date :end_date
      t.integer :receipt_id
      t.integer :product_id
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
