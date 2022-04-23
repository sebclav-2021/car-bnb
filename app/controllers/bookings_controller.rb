class BookingsController < ApplicationController
  
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_car, only: [:show]

  def index
    @bookings = Booking.all
  end
  
  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    # redirect_to car_booking_path(@car, @booking)
  end
  
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @booking.total_price = @car.price * (@booking.end_date - @booking.start_date).to_i
    if @booking.save
      redirect_to car_booking_path(@car, @booking)
    else
      render "cars/show"
    end
  end
  
  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :car_id,:start_date, :end_date)
  end
end
