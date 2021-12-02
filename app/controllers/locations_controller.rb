class LocationsController < ApplicationController
  before_action :set_location, only: %i[show edit update destroy]

  def index
    @q = Location.ransack(params[:q])
    @locations = @q.result(distinct: true).includes(:trip,
                                                    :dining_experiences).page(params[:page]).per(10)
  end

  def show
    @dining_experience = DiningExperience.new
  end

  def new
    @location = Location.new
  end

  def edit; end

  def create
    @location = Location.new(location_params)

    if @location.save
      message = "Location was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @location, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @location.update(location_params)
      redirect_to @location, notice: "Location was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    message = "Location was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to locations_url, notice: message
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :location_type, :trip_id)
  end
end
