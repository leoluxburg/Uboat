class AddSectorToSearches < ActiveRecord::Migration[7.0]
  def change
    add_column :searches, :sector, :string
  end
end
