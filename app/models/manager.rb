class Manager < ActiveRecord::Base
	has_many :holdings

	belongs_to :user

	def self.search(search)
		where("cik LIKE ?", "%#{search}%")
	end
end