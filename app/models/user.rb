class User < ApplicationRecord
    validates :username, presence: true, length: { in: 4..16 }, uniqueness: true
    validates :password, presence: true, length: { in: 4..20 }
    validates :email, presence: true, uniqueness: true

    has_many :post
    has_many :comment
end
