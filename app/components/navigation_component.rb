# frozen_string_literal: true

class NavigationComponent < ViewComponent::Base
  renders_many :links, "NavLinksComponent"

  def initialize(name:, path:)
    @name = name
    @path = path
  end

  class NavLinksComponent < ViewComponent::Base
    def initialize(name:, path:)
      @name = name
      @path = path
    end
  end
end
