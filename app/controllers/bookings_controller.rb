class BookingsController < ApplicationController
  
  #before_action :set_booking, only: [:create, :show]
  def index
    @bookings = Booking.all
  end
  
  def show
  end
  
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_bookings_path(@booking.car)
    else
      render "bookings/index"
    end
  end
  

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :car_id,:start_date, :end_date)
  end
end
