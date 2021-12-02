class Api::V1::DiningsController < Api::V1::GraphitiController
  def index
    dinings = DiningResource.all(params)
    respond_with(dinings)
  end

  def show
    dining = DiningResource.find(params)
    respond_with(dining)
  end

  def create
    dining = DiningResource.build(params)

    if dining.save
      render jsonapi: dining, status: 201
    else
      render jsonapi_errors: dining
    end
  end

  def update
    dining = DiningResource.find(params)

    if dining.update_attributes
      render jsonapi: dining
    else
      render jsonapi_errors: dining
    end
  end

  def destroy
    dining = DiningResource.find(params)

    if dining.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: dining
    end
  end
end
