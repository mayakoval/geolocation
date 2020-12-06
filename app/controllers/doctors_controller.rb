class DoctorsController < ApplicationController
	def new
		@doctor = Doctor.new
	end

	def index
		@doctors = Doctor.all

	  @markers = @doctors.geocoded.map do |doctor|
    {
      lat: doctor.latitude,
      lng: doctor.longitude
    }
    end
	end

	def show
		@doctor = Doctor.find(params[:id])
	end
end
