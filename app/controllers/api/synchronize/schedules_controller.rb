class Api::Synchronize::SchedulesController < ApplicationController

	skip_before_action :verify_authenticity_token

	def create
		@user = User.find_by(email: user_email.to_s)
		if @user
			@schedule = Schedule.new(schedule_params)
			@schedule.user = @user
			if @schedule.save
				render json: @schedule, status: :created
			else
				render json: @schedule.errors, status: :unprocessable_entity
			end			
		else
			render json: {"user": "not found"}, status: :not_found
		end
	end #created


	private

    def schedule_params
      params.require(:schedule).permit(:start_date, :end_date)
    end

    def user_email
	    params[:user][:email]
    end

end
