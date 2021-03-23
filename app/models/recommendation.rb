class Recommendation < ApplicationRecord

  validates :image_url, :name, :location, :description, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  has_one_attached :image
end
