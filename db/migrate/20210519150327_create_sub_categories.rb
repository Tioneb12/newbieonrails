class CreateSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.references :category, null: false, foreign_key: true
    end
  end
end
