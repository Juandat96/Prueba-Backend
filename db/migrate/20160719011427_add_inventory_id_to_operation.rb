class AddInventoryIdToOperation < ActiveRecord::Migration
  def change
    add_reference :operations, :inventory, index: true
  end
end
