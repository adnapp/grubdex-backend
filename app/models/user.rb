class User < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :restaurants, through: :lists
end 
