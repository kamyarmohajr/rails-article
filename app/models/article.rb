class Article < ApplicationRecord
  # validates :title, presence: true, length: { maximum: 20, minimum: 5 }
  # validates :description, presence: true, length: { maximum: 50, minimum: 5 }
  belongs_to :user
end
