class Office::PostsController < OfficeController
  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.category_posts.build
  end

  def create
    @post = Post.new(post_params)
    @categories = @post.categories.build
    if @post.save
      redirect_to admin_path
    else
      flash.alert = "Une erreur est survenue: #{@post.errors.full_messages.join(', ')}"
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
    @post.destroy
    redirect_to admin_posts_path
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
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
      :main_image,
      :meta_image,
      :meta_title,
      :meta_description,
      :meta_robot_index,
      :meta_robot_follow,
=begin
      :category_ids[]
=end
    )
  end
end
