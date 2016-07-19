class AddWorkerIdToOperation < ActiveRecord::Migration
  def change
    add_reference :operations, :worker, index: true
  end
end
