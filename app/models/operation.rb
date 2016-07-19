class Operation < ActiveRecord::Base
	belongs_to :worker
	has_one :inventory
	scope :ultimos,->{(limit(5).order(:id => :desc))}
	scope :registro,->(id){Inventory.all("inventory_id = ?", id)}
	scope :dia,-> {end_of_day("operation_id = ?")}

	before_destroy :deletingope

	def deletingope
		Register.create(:description => Inventory.serialnumber_id, worker_id)
	end
end
