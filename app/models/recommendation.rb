class Recommendation < ApplicationRecord

  validates :image_url, :name, :loction, :description, presence: true

  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  has_one_attached :image
end
