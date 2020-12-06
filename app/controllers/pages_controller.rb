class PagesController < ApplicationController
  def home
  	@doctors = Doctor.all

		@markers = @doctors.geocoded.map do |doctor|
    {
      lat: doctor.latitude,
      lng: doctor.longitude
    }
    end
  end
end
