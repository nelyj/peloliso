class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :age
      t.integer :experience
      t.string :specialty
      t.text :about
      t.integer :barbershop_id

      t.timestamps
    end
    add_index :staffs, :barbershop_id
  end
end
