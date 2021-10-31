class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :sub_categories, inverse_of: 'category'
end
