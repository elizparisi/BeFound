class Comment < ApplicationRecord

  validates :content, length: { minimum: 10, maximum: 350}

  belongs_to :user
  belongs_to :recommendation
end
