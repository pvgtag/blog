class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user, presence: true
  validates :post, presence: true
  validates :body, presence: true
  validates :body, length: { maximum: 1024, minimum: 4 }
end
