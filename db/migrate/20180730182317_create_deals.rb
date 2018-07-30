class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.references :buyer
      t.references :seller
      t.references :product
    end
  end
end
