class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :workdoneby

      t.timestamps
    end
  end
end
