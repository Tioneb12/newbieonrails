# frozen_string_literal: true

class HeroComponent < ViewComponent::Base
  def initialize(category:)
    @category = category
  end
end
