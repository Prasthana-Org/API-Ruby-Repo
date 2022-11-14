class Employee < ApplicationRecord
  
  has_many :employee_resources
  has_many :resources, through: :employee_resources

  before_save {self.email = email.downcase}

  VALID_PHONE_REGIX = /\d[0-9]\)*\z/  
  validates :Phone_number,format: { with: VALID_PHONE_REGIX },presence: true,length: {minimum:10 ,maximum: 10}

  validates :F_name, :L_name, :Designation , :Emp_type, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,presence: true,format: { with: VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false}
  
end

