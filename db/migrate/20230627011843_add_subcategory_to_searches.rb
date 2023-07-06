class AddSubcategoryToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :subcategory, :string
    add_column :searches, :district, :string
  end
end
