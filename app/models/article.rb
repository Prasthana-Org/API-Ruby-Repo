class Article < ApplicationRecord
    validates :title,presence:true,length: {minimum:3,maximum:100}
    validates :discription,presence:true,length:{minimum:6,maximum:200}
    belongs_to :user
end
