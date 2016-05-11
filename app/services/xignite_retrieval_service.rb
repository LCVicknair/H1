class XigniteRetrievalService

	def initialize
		@service = XigniteApiService.new
	end

	def retrieve_holdings(cik)
		json_response = JSON.parse(@service.get_latest_holdings(cik).body)
		
		manager_hash = json_response["Manager"]
		manager = Manager.new
		manager.cik = manager_hash["CIK"]
		manager.name = manager_hash["Name"]
		manager.save!

		holdings_hash = json_response["Filing"]["Holdings"]
		holdings_hash.each do |file|
			holding = Holding.new
			holding.symbol = file["Security"]['Symbol']
			holding.shares = file["Shares"]
			holding.value = file['Value']

			holding.manager = manager
			holding.save!


		end
	end
end
