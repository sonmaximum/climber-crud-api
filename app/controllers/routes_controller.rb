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

  # GET /routes/type/1
  def getbytype
    @routes = Route.select { |route| route.route_type == params[:id] }
    render json: @routes
  end

  # GET /getmyroutes
  def getmyroutes
    @routes = current_user.routes.all
    render json: @routes
  end

  # GET /getmyroutes/type/1
  def getmyroutesbytype
    @routes = current_user.routes.select { |route| route.route_type == params[:id] }
    render json: @routes
  end

  # GET /routes/attempted
  def getattempted
    if params[:id].to_i.zero?
      @routes = current_user.routes.reject(&:attempted)
    else
      @routes = current_user.routes.select(&:attempted)
    end
    render json: @routes
  end

  # GET /routes/completed
  def getcompleted
    if params[:id].to_i.zero?
      @routes = current_user.routes.reject(&:completed)
    else
      @routes = current_user.routes.select(&:completed)
    end
    render json: @routes
  end

  # GET /routes/sent
  def getsent
    if params[:id].to_i.zero?
      @routes = current_user.routes.reject(&:sent)
    else
      @routes = current_user.routes.select(&:sent)
    end
    render json: @routes
  end

  # GET /routes/projects
  def getprojects
    if params[:id].to_i.zero?
      @routes = current_user.routes.reject(&:project)
    else
      @routes = current_user.routes.select(&:project)
    end
    render json: @routes
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
