class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :shipping_address_line_1
      t.string :shipping_address_line_2
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_postal_code
      t.string :shipping_country
      t.string :credit_card_number
      t.string :cardholder_name
      t.integer :expiration_month
      t.integer :expiration_year
      t.string :cvv_code
      t.string :product_name
      t.integer :quantity
      t.decimal :price
      t.decimal :subtotal
      t.string :shipping_method
      t.decimal :taxes
      t.decimal :total
      t.text :gift_message
      t.string :coupon_code
      t.text :order_notes
      t.string :status
      t.references :order, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
