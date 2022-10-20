class Post < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_one_attached :image

  belongs_to :prefecture

  def image_url
    image.attached? ? url_for(image) : nil
  end
end
