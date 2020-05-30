# == Schema Information
#
# Table name: sellers
#
#  id          :bigint           not null, primary key
#  first_name  :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Seller < ApplicationRecord
  mount_uploader :image, SellerUploader
  validates :first_name, :middle_name, :last_name, :image, presence: true
end
