class PlacesController < ApplicationController
  def index
    if (params[:queryCity] == "") & (params[:queryMinCapacity] == "") & (params[:queryArriveDate] == "") & (params[:queryLeaveDate] == "")
      redirect_to root_path
      flash.notice = "empty search you baboon"
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
      sql_query_date = "next_available < :queryDate"
      @places = @places.where(sql_query_date, queryDate: params[:queryDate])
    end
  end

  def show
    @place = Place.find(params[:id])
  end
end
