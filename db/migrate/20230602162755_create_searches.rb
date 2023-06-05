class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :category
      t.string :province

      t.timestamps
    end
  end
end
