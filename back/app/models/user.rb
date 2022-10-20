class User < ApplicationRecord
  has_many :posts
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_posts, through: :bookmarks, source: :post

  validates :name, :email, uniqueness: true, presence: true
  validates :name, length: { in: 4..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
