class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @place = Place.find(reservation_params[:place_id])
    authorize @reservation
    @reservation.user = current_user
    @reservation.total_price = (@place.price_per_day * (@reservation.end_date - @reservation.start_date))
    if @reservation.save 
      redirect_to root_path
    else 
      render 'places/show'
    end
  end

  def update
  end

  def delete
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :status, :total_price, :place_id, :user_id)
  end
end
