class Post < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :title, length: { maximum: 128, minimum: 8 }
  validates :title, uniqueness: true
  validates :body, presence: true
  validates :body, length: { maximum: 1024, minimum: 4 }
end
