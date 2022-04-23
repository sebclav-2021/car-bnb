class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    @bookings = Booking.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def booking_dashboard
    @bookings = Booking.all
  end

end
