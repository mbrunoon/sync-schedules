require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SchedulesHelper. For example:
#
# describe SchedulesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SchedulesHelper, type: :helper do

	describe "distance of time in words" do

		it "Future" do
			expect(distance_of_time_in_words( Date.today + 10.day )).to eq("10 days left")
		end

		it "Tomorrow" do
			expect(distance_of_time_in_words( Date.today + 1.day )).to eq("Tomorrow")
		end

		it "Today" do
			expect(distance_of_time_in_words(Date.today)).to eq("Today")
		end

		it "Yesterday" do
			expect(distance_of_time_in_words( Date.today - 1.day )).to eq("Yesterday")
		end

		it "Past" do
			expect(distance_of_time_in_words( Date.today - 10.day )).to eq("10 days ago")
		end		

	end

end
