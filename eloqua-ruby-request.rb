require 'net/https'

class EloquaRequest
	attr_reader :site, :user

	def initialize(site=nil, user=nil, password=nil, baseUrl=nil)
		@site = site
		@user = user
		@password = password

		@https = Net::HTTP.new(baseUrl, 443)
		@https.use_ssl = true
		@https.verify_mode = OpenSSL::SSL::VERIFY_PEER
		@https.ca_file = OpenSSL::X509::DEFAULT_CERT_FILE
	end

	METHODS = {
          :get    => ::Net::HTTP::Get,
          :post   => ::Net::HTTP::Post,
          :put    => ::Net::HTTP::Put,
          :delete => ::Net::HTTP::Delete
        }

	REST_API_PATH = "/API/REST/1.0"
	
	def delete(path, params={})
		request(:delete, path, params)
	end

	def get(path, params={})
		request(:get, path, params)
	end

	def post(path, params={}, body={})
		request(:post, path, params, body)
	end

	def put(path, params={}, body={})
		request(:put, path, params, body)
	end

	def request(method, path, params={}, body={})
		request = METHODS[method].new(REST_API_PATH + '/' + path)
		request.initialize_http_header(params) if params
		request.basic_auth @site + '\\' + @user, @password

		case method
			when :post, :put
				request.body = body
		end

		response = @https.request(request)
		return response
	end
end
