class Office::CategoriesController < OfficeController
  before_action :category, only: %i[edit update destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @sub_themes = @category.sub_themes.build
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.friendly.find(params[:id])
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_path
  end

  private

  def category
    @category = Category.friendly.find(params[:id])
  end

  def category_params
    params.require(:category).permit(
      :name,
      :description,
      :slug,
      :main_image,
      :meta_robots_index,
      :meta_robots_follow,
      :meta_title,
      :meta_description,
      :meta_image,
      sub_theme_ids:[]
    )
  end

end
