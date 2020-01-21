require 'httparty'

class RequestService

	def initialize(id)
		@id = id
	end

	def getAiredDate
		response = HTTParty.get("https://rickandmortyapi.com/api/character/#{@id}")
		ch_data = JSON.parse response.body
		ep_id = ch_data['episode'].first.split('/').last
		response = HTTParty.get("https://rickandmortyapi.com/api/episode/#{ep_id}")
		ep_data = JSON.parse response.body
		ep_data['air_date']
	end
end
