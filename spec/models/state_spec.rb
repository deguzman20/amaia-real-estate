# == Schema Information
#
# Table name: states
#
#  id                   :bigint           not null, primary key
#  region               :string(255)
#  regional_designation :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
require "rails_helper"

RSpec.describe State, type: :model do
  describe "Associations" do
    it { is_expected.to have_many(:cities).dependent(:destroy) }
  end

  describe "Model Validation" do
    it { is_expected.to validate_presence_of(:region) }
    it { is_expected.to validate_presence_of(:regional_designation) }
  end

  it "creates a state with 10 cities" do
    state = build(:state)
    create_list(:city, 10, state: state)
    expect(state.cities.count).to eq(10)
  end
end
