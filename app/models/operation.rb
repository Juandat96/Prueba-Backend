class Operation < ActiveRecord::Base
	belongs_to :worker
	has_one :inventory
end
