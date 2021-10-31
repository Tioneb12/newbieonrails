class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :posts, inverse_of: 'sub_category'
  extend FriendlyId
  friendly_id :name, use: :slugged
end
