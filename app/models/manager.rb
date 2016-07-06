class Manager < ActiveRecord::Base
	has_many :holdings

	has_and_belongs_to_many :users

	def self.search(search)
		where("cik LIKE ?", "%#{search}%")
	end
end