class EmployeeResourcesController < ApplicationController


  def create
    @employee_resource = EmployeeResource.new(employee_resource_params)
    @employee_resource.save
    render json:@employee_resource
  end

  def update
    @employee_resource =EmployeeResource.find(params[:id])
    @employee_resource.update(employee_resource_params)
    render json: @employee_resource
  end

  def destroy
    @employee_resource =EmployeeResource.find(params[:id])
    @employee_resource.destroy
    render json:@employee_resource
  end

  private

  def employee_resource_params
    params.require(:employee_resource).permit(:resource_id, :employee_id, :Quantity, :date_of_issue)
  end
  
end
