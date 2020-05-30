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
require "rails_helper"

RSpec.describe Promo, type: :model do
  describe "Associations" do
    it { is_expected.to belong_to(:unit).optional(true) }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:unit_id) }
  end

  it { is_expected.to delegate_method(:type).to(:unit) }
end
