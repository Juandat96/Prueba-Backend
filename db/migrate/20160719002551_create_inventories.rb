class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :serialnumber
      t.integer :size
      t.text :description

      t.timestamps
    end
    add_index :inventories, :serialnumber, unique: true
  end
end
