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
    @human = Human.find(params[:human_id])
    @booking = Booking.new
  end
  
  def create
    @human = Human.find(params[:human_id])
    @booking = Booking.new(booking_params)
    @booking.human = @human
    @booking.user = current_user
    @booking.status = "Awaiting Acceptance"
    if @booking.start_date && @booking.end_date
      @booking.total_price = (@booking.end_date - @booking.start_date) * @human.rate
    else
      @booking.total_price = 0 #TODO make alert that this time period is not valid
    end
    if @booking.save
        redirect_to booking_path(@booking)
    else
        redirect_to human_path(@human)
    end
  end

  def edit
  end

  def accept
    booking = current_user.bookings_recived.find(params[:id])
    booking.accept
  #if user not accepted -- display booking
  #else user accepted -- 
  end
 
  def reject
    booking = current_user.bookings_recived.find(params[:id])
    booking.reject
  end


  def update
    # show in index of bookings
    find_booking
    # buttons post request to 
    @booking.status = "Awaiting Acceptance"
    @booking.save
    redirect_to booking_path(@booking)
    # user who created the human
    # devise if logged_in? current_user
    # if human(user_id) == current_user
  end
  
  def destroy
    find_booking
    @booking.destroy
    redirect_to booking_path
  end
  
  private
  
  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end
end
