class ResourcesController < ApplicationController

   def index
    @resources = Resource.all
    render json:@resources,each_serailizer: ResourceSerializer
   end

  def create
    @resource = Resource.new(resource_params)
    @resource.save
    render json:@resource
  end

  def show
    @resource= Resource.find(params[:id])
    render json:@resource
  end

  def update
    @resource =Resource.find(params[:id])
    @resource.update(resource_params)
    render json: @resource
  end

  def destroy
    @resource =Resource.find(params[:id])
    @resource.destroy
    render json:@resource
  end

  private

  def resource_params
    params.require(:resource).permit(:Assets, :Brand ,:Generation, :Tag_No, :color)
  end
end
