class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # validates :user, presence: true
  # validates :post, presence: true
  # validates :mark, presence: true
end
