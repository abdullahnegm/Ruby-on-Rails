class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { in: 10..300 }
  validates :user, presence: true
end
