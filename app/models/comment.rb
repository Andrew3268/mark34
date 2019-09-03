class Comment < ApplicationRecord
  extend FriendlyId
  friendly_id :post, use: :slugged
  
  belongs_to :user
  belongs_to :post
  validates :body, presence: true, allow_blank: false
end
