class TripsController < ApplicationController
	before_action :set_trip, only: [:show, :edit, :update, :destroy]

	def index
		@trips = Trip.all
	end

	def show
	end

	def new
		@trip = Trip.new
	end

	def edit
	end

	def create
		@trip = Trip.new(trip_params)


		respond_to do |format|
			if @trip.save
				format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
				format.json { render :show, status: :created, location: @trip }
			else
				format.html { render :new }
				format.json { render json: @trip.errors, status: :unprocessable_entity }
			end
		end
	end


	def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
	
    def set_trip
      @trip = Trip.find(params[:id])
    end

end
