class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_one_attached :main_image
    has_many :sub_categories, inverse_of: 'category'
end
