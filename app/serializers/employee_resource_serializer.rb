class EmployeeResourceSerializer < ActiveModel::Serializer
  attributes :id, :Quantity, :employee_id, :resource_id, :url

  def url
    employee_url(object)
  end
end
