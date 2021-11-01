Post.destroy_all
SubCategory.destroy_all
Category.destroy_all

require 'faker'

puts "Création catégories"

Category.create!(
  name: "Digital",
  description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
)

puts "Création sous-catégories"

SubCategory.create!(
  name: "SEO",
  description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
  category_id: Category.first.id
)

SubCategory.create!(
  name: "Newbie on rails",
  description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
  category_id: Category.first.id
)