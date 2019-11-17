class User < ApplicationRecord
    has_many :courses
    validates :username,
        presence: true,
        length:{minimum:3,maximum:25}
    
    has_secure_password
end    