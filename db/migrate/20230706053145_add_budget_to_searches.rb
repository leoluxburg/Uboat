class AddBudgetToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :budget, :float
    add_column :searches, :bay, :string
  end
end
