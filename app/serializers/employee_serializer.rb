class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :F_name, :L_name, :Address, :Emp_type, :Designation, :Phone_number, :email
   has_many :resources
end
