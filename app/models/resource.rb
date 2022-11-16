class Resource < ApplicationRecord
  has_many :employee_resources,dependent: :destroy
  has_many :employees, through: :employee_resources
  validates :Tag_No, :Brand, :Assets, presence: true
end
