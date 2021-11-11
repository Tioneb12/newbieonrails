class AddColumnExcerptToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :excerpt, :string
  end
end
