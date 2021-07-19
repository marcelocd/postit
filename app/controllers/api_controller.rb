class ApiController < ActionController::Base
	before_action :authenticate_request

  private

  AUTHORIZED_BEARER_TOKEN = ENV['AUTHORIZED_BEARER_TOKEN']

	def authenticate_request
		token = request.headers['Authorization']
                   .to_s
                   .gsub(/Bearer /, '')

		head :unauthorized unless token == AUTHORIZED_BEARER_TOKEN
	end
end
