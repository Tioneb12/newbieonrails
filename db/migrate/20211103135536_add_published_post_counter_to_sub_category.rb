class AddPublishedPostCounterToSubCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :sub_categories, :published_posts_count, :integer
  end
end
