class Worker < ActiveRecord::Base
	validates :name, presence: true
	has_many :operation
end
