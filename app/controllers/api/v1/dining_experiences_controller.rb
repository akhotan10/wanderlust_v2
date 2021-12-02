class Api::V1::DiningExperiencesController < Api::V1::GraphitiController
  def index
    dining_experiences = DiningExperienceResource.all(params)
    respond_with(dining_experiences)
  end

  def show
    dining_experience = DiningExperienceResource.find(params)
    respond_with(dining_experience)
  end

  def create
    dining_experience = DiningExperienceResource.build(params)

    if dining_experience.save
      render jsonapi: dining_experience, status: :created
    else
      render jsonapi_errors: dining_experience
    end
  end

  def update
    dining_experience = DiningExperienceResource.find(params)

    if dining_experience.update_attributes
      render jsonapi: dining_experience
    else
      render jsonapi_errors: dining_experience
    end
  end

  def destroy
    dining_experience = DiningExperienceResource.find(params)

    if dining_experience.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: dining_experience
    end
  end
end
