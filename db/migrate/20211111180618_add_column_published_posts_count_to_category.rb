class AddColumnPublishedPostsCountToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :published_posts_count, :integer
  end
end
