class User < ApplicationRecord
  include Clearance::User

  extend FriendlyId
  friendly_id :name, use: :slugged

end
