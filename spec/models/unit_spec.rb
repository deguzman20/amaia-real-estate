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
require "rails_helper"

RSpec.describe Unit, type: :model do
  describe "Associations" do
    it { is_expected.to belong_to(:unit_type).optional(true) }
    it { is_expected.to belong_to(:city).optional(true) }
    it { is_expected.to belong_to(:type).optional(true) }
    it { is_expected.to have_many(:promos) }
    it { is_expected.to have_many(:inquiries).dependent(:destroy) }
    it { is_expected.to have_many(:unit_galleries).dependent(:destroy) }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:specific_location) }
    it { is_expected.to validate_presence_of(:unit_type_id) }
    it { is_expected.to validate_presence_of(:city_id) }
    it { is_expected.to validate_presence_of(:price_from) }
    it { is_expected.to validate_presence_of(:price_to) }
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to validate_presence_of(:unit_size_from) }
    it { is_expected.to validate_presence_of(:unit_size_to) }
    # it { is_expected.to validate_presence_of(:project_concept) }
    # it { is_expected.to validate_presence_of(:location_and_vicinity) }
    # it { is_expected.to validate_presence_of(:site_development_plan) }
    # it { is_expected.to validate_presence_of(:units_and_floor_plan) }
    # it { is_expected.to validate_presence_of(:amenities_and_facilities) }
    # it { is_expected.to validate_presence_of(:model_unit) }
    # it { is_expected.to validate_presence_of(:type_id) }
  end
end
