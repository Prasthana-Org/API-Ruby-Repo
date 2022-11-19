class User < ApplicationRecord
  
  has_secure_password

  has_one :article

  before_save { self.email =email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :username,presence: true,length:{ minimum: 3}
  validates :email,Uniqueness: { case_sensitive: false },presence: true,format: { with: VALID_EMAIL_REGEX }
end