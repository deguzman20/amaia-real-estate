# == Schema Information
#
# Table name: unit_types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe UnitType, type: :model do
  describe "Associations" do
    it { is_expected.to have_many(:units).dependent(:destroy) }
  end

  # it "creates a unit type with 10 units" do
  #   unit_type = build(:unit_type)
  #   create_list(:unit, 10, unit_type: unit_type)
  #   expect(unit_type.units.count).to eq(10)
  # end
end
