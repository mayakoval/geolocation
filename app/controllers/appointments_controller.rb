class AppointmentsController < ApplicationController
	before_action :set_doctor, except: [:index, :show, :destroy]

	def new
		@appointment = Appointment.new
		@doctor = set_doctor
	end

	def index
		@appointments = Appointment.all
	end

	def show
    @appointment = Appointment.find(params[:id])
  end

	def create
    @appointment = Appointment.new(appointment_params)
    @appointment.doctor = @doctor
    if @appointment.save
      redirect_to doctors_path(@doctor)
    else
      render :new
    end
  end

	private

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_name, :email, :date, :time, :nhs_number)
  end
end
