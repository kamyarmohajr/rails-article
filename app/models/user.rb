class User < ApplicationRecord
  # validates :username, presence: true, length: { maximum: 40, minimum: 3 }
  # validates :bio, presence: true, length: { maximum: 120, minimum: 3 }
  has_many :articles
end
