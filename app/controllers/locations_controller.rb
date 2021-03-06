# frozen_string_literal:true

class LocationsController < OpenReadController
  before_action :set_location, only: %i[update destroy]

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations, root: :locations
  end

  # GET /locations/1
  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  # get /maintainedlocations/

  def getmaintained
    @locations = current_user.maintained_locations.all
    render json: @locations, root: :locations
  end

  # get /mylocations/

  def getclimbedat
    @locations = current_user.locations.all
    render json: @locations, root: :locations
  end

  # POST /locations
  def create
    @location = current_user.maintained_locations.build(location_params)

    if @location.save
      render json: @location, status: :created
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = current_user.maintained_locations.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def location_params
    params.require(:location).permit(:name, :address, :outdoors, :comments)
  end
end
