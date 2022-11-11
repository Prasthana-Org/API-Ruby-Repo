class User < ApplicationRecord
    before_save { self.email=email.downcase}
    validates :username,presence:true,length:{minimum:4,maximum:255}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, format: {with:VALID_EMAIL_REGEX} ,uniqueness: {case_sensitive: false}
    has_many  :articles
end
