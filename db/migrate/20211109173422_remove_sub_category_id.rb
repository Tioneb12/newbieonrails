class RemoveSubCategoryId < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :sub_category_id
  end
end
