class Synchronizer

	require 'net/http'

	HOST = ENV["HOST"]
	SERVERS = ENV["SERVERS"].gsub(" ", "").split(",") - [ENV["HOST"]]

	def self.synchronize_dates_with_user_email(start_date, end_date, user_email)

		SERVERS.each do |server|

			uri = "#{server}/api/synchronize/schedules"
			payload = {schedule: {start_date: start_date, end_date: end_date}, user: {email: user_email}}.to_json
			response = RestClient.post uri, payload, {content_type: :json, accept: :json}
			puts "RESPONSE: "
			puts "code: #{response.code}"
			puts "body: #{response.body}"

		end



	end # synchronize_dates_with_user_email


end
