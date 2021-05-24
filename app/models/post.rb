class Post < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category
  extend FriendlyId
  friendly_id :title, use: :slugged
end
