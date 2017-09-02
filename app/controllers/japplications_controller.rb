class JapplicationsController < ApplicationController
before_action :authenticate_user!	

	def create
		@japplication = current_user.japplications.create(japplication_params)

		redirect_to @japplication.job, notice: "Your Job application has been created"
	end

	private
		def japplication_params
			params.require[:japplication].permit(:job_id)
		end
end