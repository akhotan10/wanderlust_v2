class DiningExperiencesController < ApplicationController
  before_action :set_dining_experience, only: %i[show edit update destroy]

  def index
    @q = DiningExperience.ransack(params[:q])
    @dining_experiences = @q.result(distinct: true).includes(:trip,
                                                             :location, :dishes).page(params[:page]).per(10)
  end

  def show
    @dish = Dish.new
  end

  def new
    @dining_experience = DiningExperience.new
  end

  def edit; end

  def create
    @dining_experience = DiningExperience.new(dining_experience_params)

    if @dining_experience.save
      message = "DiningExperience was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @dining_experience, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @dining_experience.update(dining_experience_params)
      redirect_to @dining_experience,
                  notice: "Dining experience was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @dining_experience.destroy
    message = "DiningExperience was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to dining_experiences_url, notice: message
    end
  end

  private

  def set_dining_experience
    @dining_experience = DiningExperience.find(params[:id])
  end

  def dining_experience_params
    params.require(:dining_experience).permit(:name, :type_of_dining,
                                              :rating, :location_id, :trip_id)
  end
end
