class EmployeeResourceSerializer < ActiveModel::Serializer
  attributes :id, :Quantity, :employee_id, :resource_id

  # def url
  #   employee_url(self.object)
  # end

end
