module NavigationHelper
  def sub_themes(cat)
    array = []
    cat.sub_themes.each do |sub_cat|
      array.push(name: sub_cat.name, path: category_path(sub_cat.slug))
    end
    return array
  end
end