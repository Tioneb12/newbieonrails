class AddMetaToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :meta_robots_index, :boolean, default: true
    add_column :posts, :meta_robots_follow, :boolean, default: true
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_description, :string
    add_column :posts, :meta_image, :string
  end
end
