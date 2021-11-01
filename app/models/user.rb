class User < ApplicationRecord
  include Clearance::User

  extend FriendlyId
  friendly_id :name, use: :slugged
  has_one_attached :avatar

end
