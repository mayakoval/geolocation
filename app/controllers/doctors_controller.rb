class DoctorsController < ApplicationController
	def new
		@doctor = Doctor.new
	end

	def index
		@doctors = Doctor.all

	  @markers = @doctors.geocoded.map do |doctor|
    {
      lat: doctor.latitude,
      lng: doctor.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { doctor: doctor })
    }
    end
	end

	def show
		@doctor = Doctor.find(params[:id])
	end
end
