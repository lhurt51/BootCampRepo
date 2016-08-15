class Post < ApplicationRecord
  belongs_to :blog
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
