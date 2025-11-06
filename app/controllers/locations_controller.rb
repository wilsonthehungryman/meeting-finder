class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show ]

  # GET /locations or /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1 or /locations/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.expect(location: [ :street_address, :province, :country, :lat, :long ])
    end
end
