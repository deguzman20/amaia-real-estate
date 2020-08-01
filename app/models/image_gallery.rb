class ImageGallery < ApplicationRecord
  mount_uploader :image, UnitGalleryUploader
  belongs_to :unit, optional: true
end
