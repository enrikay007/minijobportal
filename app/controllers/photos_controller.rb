class PhotosController < ApplicationController

	def destroy
		@photo = Photo.find(params[:id])
		job = @photo.job


		@photo.destroy
		@photos = Photo.where(job_id: job.id)

		respond_to :js
	end
end