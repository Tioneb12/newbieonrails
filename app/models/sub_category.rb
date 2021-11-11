class SubCategory < ApplicationRecord
  extend FriendlyId
  has_one_attached :main_image
  friendly_id :name, use: :slugged

  scope :displayed, -> { where("published_posts_count > ?" , 0) }

  private

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end
end
