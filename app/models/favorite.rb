class Favorite < ApplicationRecord
  extend FriendlyId
  friendly_id :post, use: :slugged

  belongs_to :post
  belongs_to :user
end
