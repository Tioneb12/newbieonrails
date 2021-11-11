require 'faker'

puts "Création catégories"

@cat1 = Category.create!(
  name: "Vanlife"
)

cat1_1 = Category.create!(
  name: "J'aménage mon T4 volskwagen"
)

cat1_2 = Category.create!(
  name: "Road Trips"
)

puts "Création sous thèmes"


SubTheme.create(category_id: @cat1.id, sub_theme_id: cat1_1.id )
SubTheme.create(category_id: @cat1.id, sub_theme_id: cat1_2.id )

puts "Création catégories"

@cat2 = Category.create!(
  name: "Digital nomade"
)

cat2_1 = Category.create!(
  name: "Je crée mon site de A à Z"
)

cat2_2 = Category.create!(
  name: "SEO"
)

puts "Création sous thèmes"

SubTheme.create(category_id: @cat2.id, sub_theme_id: cat2_1.id )
SubTheme.create(category_id: @cat2.id, sub_theme_id: cat2_2.id )

@cat3 = Category.create!(
  name: "Images de nomade"
)
