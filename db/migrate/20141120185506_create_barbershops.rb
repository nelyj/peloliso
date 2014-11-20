class CreateBarbershops < ActiveRecord::Migration
  def change
    create_table :barbershops do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :barbershops, :user_id
  end
end
