class User < ApplicationRecord
    has_many :posts

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :name, presence: true, length: { in: 3..25 }, uniqueness: { case_sensitive: false }
    validates :age, presence: true , numericality: { only_integer: true, greater_than_or_equal_to: 18 }
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, length: { maximum: 100 }
    has_secure_password
end
