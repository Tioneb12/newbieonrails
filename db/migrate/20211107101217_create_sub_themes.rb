class CreateSubThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_themes do |t|
      t.integer :category_id
      t.integer :sub_theme_id
    end
  end
end
