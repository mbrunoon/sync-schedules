module SchedulesHelper

	def distance_of_time_in_words(start_date)

		distance_in_days = (start_date - Date.today).to_i

		if distance_in_days > 1
			return "#{distance_in_days.abs} days left"
		elsif distance_in_days == 1
			return "Tomorrow"
		elsif distance_in_days == 0
			return "Today"
		elsif distance_in_days == -1
			return "Yesterday"
		else
			return "#{distance_in_days.abs} days ago"
		end
	end

end
