class PlacesController < ApplicationController
  def index
    if (params[:queryCity] == "") & (params[:queryMinCapacity] == "") & (params[:queryArriveDate] == "") & (params[:queryLeaveDate] == "")
      redirect_to root_path
      flash.notice = "Please enter at least one search term."
    else
      @places = Place.all
    end

    if params[:queryCity].present?
      sql_query_city = "city ILIKE :queryCity"
      @places = @places.where(sql_query_city, queryCity: "%#{params[:queryCity]}%")
    end

    if params[:queryMinCapacity].present?
      sql_query_min_capacity = "max_capacity >= :queryMinCapacity"
      @places = @places.where(sql_query_min_capacity, queryMinCapacity: params[:queryMinCapacity])
    end
    
    if params[:queryArriveDate].present?
      available = []
      @places.each do |place|
        available << place if place.start_available?(params[:queryArriveDate].to_date)
      end
      @places = available
    end

    if (params[:queryLeaveDate].present?) && !(params[:queryArriveDate].present?)
      redirect_to root_path
      flash.notice = "Please enter an arriving date."
    end

    if (params[:queryLeaveDate].present?) && (params[:queryArriveDate].present?)
      available = []
      @places.each do |place|
        available << place if place.available?(params[:queryArriveDate].to_date, params[:queryleaveDate].to_date)
      end
      @places = available
    end
  end

  def show
    @place = Place.find(params[:id])
  end
end
