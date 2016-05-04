class XigniteApiService
	include HTTParty

	def initialize
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
