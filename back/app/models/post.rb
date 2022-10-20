class Post < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_one_attached :image

  belongs_to :prefecture, optional: true

  def image_url
    image.attached? ? url_for(image) : nil
  end
end
