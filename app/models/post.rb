class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :main_image

  has_many :category_posts
  has_many :categories, through: :category_posts, inverse_of: 'post'
  accepts_nested_attributes_for :categories

  scope :published, -> { where("statut= ?", true ) }

=begin
  after_save :update_counter_cache
  before_destroy :update_counter_cache
=end

=begin
  def update_counter_cache
    self.sub_category.published_posts_count = Post.where("statut= true AND sub_category_id = ?",self.sub_category.id).count
    self.sub_category.save
  end
=end

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
