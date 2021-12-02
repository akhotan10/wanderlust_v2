class DiningsController < ApplicationController
  before_action :set_dining, only: %i[show edit update destroy]

  def index
    @q = Dining.ransack(params[:q])
    @dinings = @q.result(distinct: true).includes(:trip, :location,
                                                  :dishes).page(params[:page]).per(10)
  end

  def show
    @dish = Dish.new
  end

  def new
    @dining = Dining.new
  end

  def edit; end

  def create
    @dining = Dining.new(dining_params)

    if @dining.save
      message = "Dining was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @dining, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @dining.update(dining_params)
      redirect_to @dining, notice: "Dining was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @dining.destroy
    message = "Dining was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to dinings_url, notice: message
    end
  end

  private

  def set_dining
    @dining = Dining.find(params[:id])
  end

  def dining_params
    params.require(:dining).permit(:dining_type, :dining_name, :rating,
                                   :location_id, :trip_id)
  end
end
