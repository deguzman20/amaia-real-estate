# == Schema Information
#
# Table name: promos
#
#  id         :bigint           not null, primary key
#  unit_id    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Promo < ApplicationRecord
  include ActiveModel::ForbiddenAttributesProtection

  mount_uploader :image, PromoUploader

  belongs_to :unit, optional: true

  delegate :type, to: :unit

  validates :image, :unit_id, presence: true
end
