class Synchronizer

	require 'net/http'

	HOST = ENV["HOST"]
	SERVERS = ENV["SERVERS"].gsub(" ", "").split(",") - [ENV["HOST"]]

	def self.synchronize_dates_with_user_email(start_date, end_date, user_email)

		SERVERS.each do |server|
			uri = URI("#{server}/api/synchronize/schedules")
			request = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
			request.body = {schedule: {start_date: start_date, end_date: end_date}, user: {email: user_email}}.to_json
			response = Net::HTTP.start(uri.hostname, uri.port) do |http|
			  http.request(request)
			end
		end

	end # synchronize_dates_with_user_email


end
