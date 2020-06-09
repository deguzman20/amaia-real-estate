# == Schema Information
#
# Table name: units
#
#  id                       :bigint           not null, primary key
#  specific_location        :string(255)
#  type_id                  :integer
#  city_id                  :integer
#  price_from               :string(255)
#  price_to                 :string(255)
#  image                    :string(255)
#  unit_size_from           :string(255)
#  unit_size_to             :string(255)
#  project_concept          :text(65535)
#  location_and_vicinity    :text(65535)
#  amenities_and_facilities :text(65535)
#  model_unit               :text(65535)
#  unit_type_id             :integer
#  pre_selling              :boolean
#  ready_for_occupancy      :boolean
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  site_development_plan    :string(255)
#  units_and_floor_plan     :string(255)
#
class Unit < ApplicationRecord
  mount_uploader :image, UnitUploader

  belongs_to :unit_type, optional: true
  belongs_to :city, optional: true
  belongs_to :type, optional: true

  has_many :promos
  has_many :inquiries, dependent: :destroy

  validates :specific_location, :unit_type_id, :city_id, :price_from, :price_to,
            :image, :unit_size_from, :unit_size_to, presence: true 
            # :project_concept, :location_and_vicinity,
            # :site_development_plan, :units_and_floor_plan,
            # :amenities_and_facilities, :model_unit, :type_id, presence: true

  scope :pre_selling, -> { where(pre_selling: true) }
  scope :ready_for_occupancy, -> { where(ready_for_occupancy: true) }
  scope :city, ->(city_id) { where(city_id: city_id) }
end
