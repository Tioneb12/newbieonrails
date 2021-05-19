Post.destroy_all
SubCategory.destroy_all
Category.destroy_all

require 'faker'

puts "Création catégories"

Category.create!(
    name: "Digital",
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
)

Category.create!(
    name: "Autre",
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


compteur = 0
posts = Array(0...10)

posts.each do 
    Post.create!(
        title: "Article n°#{compteur += 1}",
        body: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
        statut: 'published',
        user_id: User.first.id,
        sub_category_id: SubCategory.all.sample.id
    )
end