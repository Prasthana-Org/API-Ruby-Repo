# class EmployeeResourcesController < ApplicationController

#     def index
#     @employees_resources = EmployeeResource.all
#     render json:@employees_resources,except: [ :created_at, :updated_at]
#   end

#   def create
#     @employee_resource = EmployeeResource.new(employee_resource_params)
#     @employee_resource.save
#     render json:@employee_resource
#   end

#   def show
#     @employee_resource= EmployeeResource.find(params[:id])
#     render { json:@employee_resource,root: false}
#   end


#   def update
#     @employee_resource =EmployeeResource.find(params[:id])
#     @employee_resource.update(employee_resource_params)
#     render json: @employee_resource
#   end

#   def destroy
#     @employee_resource =EmployeeResource.find(params[:id])
#     @employee_resource.destroy
#     render json:@employee_resource
#   end

#   private

#   def employee_resource_params
#     params.require(:employee_resource).permit(:resource_id, :employee_id, :Quantity, :date_of_issue)
#   end
  
# end
