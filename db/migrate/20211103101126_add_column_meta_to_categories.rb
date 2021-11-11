class AddColumnMetaToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :meta_robots_index, :boolean, default: true
    add_column :categories, :meta_robots_follow, :boolean, default: true
    add_column :categories, :meta_title, :string
    add_column :categories, :meta_description, :string
    add_column :categories, :meta_image, :string
  end
end
