class User < ApplicationRecord
  validates :name, :email, uniqueness: true, presence: true
  validates :name, length: { in: 4..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
