class Post < ApplicationRecord
  belongs_to :user
  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :content, presence: true, length: { in: 10..300 }
  validates :user, presence: true
end
