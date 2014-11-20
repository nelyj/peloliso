class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :barbershop_id

      t.timestamps
    end
    add_index :products, :barbershop_id
  end
end
