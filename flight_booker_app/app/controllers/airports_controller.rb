class AirportsController < ApplicationController

  def index
    if params[:search]
      @airports = Airport.search(params[:search]).order("created_at DESC")
    else
      @airports = Airport.all.order('created_at DESC')
    end

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @airports }
        format.json { render :json => @airports }
      end
        # http://www.theodinproject.com/ruby-on-rails/apis-and-building-your-own

  end


end
