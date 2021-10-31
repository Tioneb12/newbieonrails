class Post < ApplicationRecord
  belongs_to :user
  belongs_to :sub_category
  extend FriendlyId
  friendly_id :title, use: :slugged

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
