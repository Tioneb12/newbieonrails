class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :main_image
  has_many :category_posts
  has_many :posts, through: :category_posts, inverse_of: 'categories'
  accepts_nested_attributes_for :posts

  has_many :sub_themes_association, class_name: 'SubTheme'
  has_many :sub_themes, through: :sub_themes_association, source: :sub_theme
  has_many :inverse_sub_themes_association, class_name: 'SubTheme', foreign_key: 'sub_theme_id'
  has_many :inverse_sub_themes, through: :inverse_sub_themes_association, source: :category

  scope :displayed, -> { where('published_posts_count > ?', 0) }
  scope :mother, -> { Category.where('id NOT IN (SELECT DISTINCT(sub_theme_id) FROM sub_themes)') }
  scope :children, -> { Category.where('id IN (SELECT DISTINCT(sub_theme_id) FROM sub_themes)') }

=begin
  .where('id NOT IN (SELECT DISTINCT(sub_theme_id) FROM sub_themes)') }
=end

  private

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end
end
