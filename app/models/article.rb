class Article < ApplicationRecord
    validates :title,presence:true,length: {minimum:3,maximum:10}
    validates :discription,presence:true,length:{minimum:6,maximum:20}
end
