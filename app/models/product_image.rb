class ProductImage < ActiveRecord::Base
  belongs_to :product

  mount_uploader :img, ProductImageUploader

  def image
    image_url.presence || img.url.presence || ''
  end
end

# == Schema Information
#
# Table name: product_images
#
#  id              :integer          not null, primary key
#  img             :string
#  primary_picture :boolean
#  product_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_url       :string
#
