class CreatePaymentConfirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_confirmations do |t|
      t.string :code
      t.references :receipt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
