class Inventory < ActiveRecord::Base
	belongs_to :operation, dependent: :destroy
	before_destroy :deletingitem

	def deletingitem
		Register.create(:description => serialnumber_id)
		end


end

