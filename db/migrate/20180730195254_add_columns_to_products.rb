class AddColumnsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description, :string
    add_column :products, :price, :integer
    add_column :products, :location, :string
  end
end
