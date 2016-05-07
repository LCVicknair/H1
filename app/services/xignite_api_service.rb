class XigniteApiService
	include HTTParty

	def get_manager(name)
		get('xHoldings.json/LookupManager', { :Name => name })
	end

	def get_latest_holdings(cik)
		get('xHoldings.json/GetLatestHoldings', { :ManagerCIK => cik })
	end

	def get_latest_holders(type, identifier)
		get('xHoldings.json/GetLatestHolders', { :IdentifierType => type, :Identifier => identifier })
	end

	private

		def base_url
			'http://www.xignite.com/'
		end

		def get(path, params={})
			url = base_url + path + '?_Token=' + api_token
			query_string = ''
			params.each_pair do |key, value|
				query_string += "&#{key}=#{value}"
			end
			url = url + query_string
			puts url
			self.class.get(url)
		end

		def api_token
			ENV.fetch('XIGNITE_API_TOKEN')
		end
end
