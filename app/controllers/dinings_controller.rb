class DiningsController < ApplicationController
  before_action :set_dining, only: [:show, :edit, :update, :destroy]

  # GET /dinings
  def index
    @dinings = Dining.page(params[:page]).per(10)
  end

  # GET /dinings/1
  def show
    @dish = Dish.new
  end

  # GET /dinings/new
  def new
    @dining = Dining.new
  end

  # GET /dinings/1/edit
  def edit
  end

  # POST /dinings
  def create
    @dining = Dining.new(dining_params)

    if @dining.save
      message = 'Dining was successfully created.'
      if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referrer, notice: message
      else
        redirect_to @dining, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /dinings/1
  def update
    if @dining.update(dining_params)
      redirect_to @dining, notice: 'Dining was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dinings/1
  def destroy
    @dining.destroy
    message = "Dining was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to dinings_url, notice: message
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining
      @dining = Dining.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dining_params
      params.require(:dining).permit(:dining_type, :dining_name, :rating, :location_id, :trip_id)
    end
end
