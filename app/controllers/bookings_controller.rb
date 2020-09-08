class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.where(user_id: current_user.id)
    # @review = Review.new
  end
  
  def show
    find_booking
    @human = @booking.human
  end
  
  def new
  
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
  end
end
