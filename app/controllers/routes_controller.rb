class RoutesController < OpenReadController
  before_action :set_route, only: [:update, :destroy]

  # GET /routes
  def index
    @routes = Route.all

    render json: @routes
  end

  # GET /routes/1
  def show
    @route = Route.find(params[:id])
    render json: @route
  end

  # POST /routes
  def create
    @route = current_user.routes.build(route_params)

    if @route.save
      render json: @route, status: :created, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routes/1
  def update
    if @route.update(route_params)
      render json: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routes/1
  def destroy
    @route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = current_user.routes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def route_params
      params.require(:route).permit(:name, :rating, :location, :user_id, :route_type, :outdoors, :attempted, :completed, :sent, :project, :hangs, :comments, :color)
    end
end
