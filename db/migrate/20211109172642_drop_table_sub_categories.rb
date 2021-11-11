class DropTableSubCategories < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :posts, :sub_categories
    remove_foreign_key :sub_categories, :categories
    drop_table :sub_categories
  end
end
