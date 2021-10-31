class SubCategoriesController < ApplicationController
  def index
    @sub_categories = SubCategory.all
  end

  def show
    @sub_category = SubCategory.includes(:posts).friendly.find(params[:id])
  end
end
