class CreateCategoryPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :category_posts do |t|
      t.integer :post_id
      t.integer :category_id
    end
  end
end
