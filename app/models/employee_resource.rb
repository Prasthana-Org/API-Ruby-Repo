class EmployeeResource < ApplicationRecord
  belongs_to :employee
  belongs_to :resource
  validates :employee_id, :resource_id, :Quantity, presence: true, numericality: { only_integer: true}
end
