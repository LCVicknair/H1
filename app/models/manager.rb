class Manager < ActiveRecord::Base
	has_many :holdings

	belongs_to :user
end
