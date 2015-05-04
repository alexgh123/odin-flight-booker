class AirportsController < ApplicationController

  def index
    if params[:search]
      @airports = Airport.search(params[:search]).order("created_at DESC")
    else
      @airports = Airport.all.order('created_at DESC')
    end
  end

end
