class Manager < ActiveRecord::Base
	has_many :holdings

	has_many :users

	def self.search(search)
		where("cik LIKE ?", "%#{search}%")
	end
end