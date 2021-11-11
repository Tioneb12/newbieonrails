# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.displayed
  end

  def show
    @category = Category.friendly.find(params[:id])
  end
end
