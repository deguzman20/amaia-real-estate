# == Schema Information
#
# Table name: carousels
#
#  id         :bigint           not null, primary key
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Carousel < ApplicationRecord
  mount_uploader :image, CarouselUploader
  validates :image, presence: true
end
