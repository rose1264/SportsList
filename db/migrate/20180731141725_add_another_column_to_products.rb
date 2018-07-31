class AddAnotherColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :avatars, :string
  end
end
