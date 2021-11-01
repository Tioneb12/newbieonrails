class Office::PostsController < OfficeController
  before_action :set_post, only: %i[edit update destroy]
  before_action :set_sub_categories, only: %i[new create edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.delete
    redirect_to admin_posts_path
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def set_sub_categories
    @sub_categories = SubCategory.all
  end

  def post_params
    params.require(:post).permit(
      :id,
      :title,
      :body,
      :slug,
      :statut,
      :created_at,
      :updated_at,
      :user_id,
      :sub_category_id,
      :main_image
    )
  end
end
