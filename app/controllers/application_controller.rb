class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :set_categories

  def set_categories
    @nav_categories = Category.mother
  end
end
