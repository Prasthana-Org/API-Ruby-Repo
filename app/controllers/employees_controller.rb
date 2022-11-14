class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render json:@employees,each_serailizer: EmployeeSerializer
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    render json:@employee
  end

  def show
    @employee= Employee.find(params[:id])
    render json:@employee
  end

  def update
    @employee =Employee.find(params[:id])
    @employee.update(employee_params)
    render json: @employee
  end

  def destroy
    @employee =Employee.find(params[:id])
    @employee.destroy
    render json:@employee
  end

  private

  def employee_params
    params.require(:employee).permit(:F_name, :L_name, :Address, :Emp_type, :Designation,:Emp_manager, :Phone_number, :email, :DOB, :DOJ)
  end
end
