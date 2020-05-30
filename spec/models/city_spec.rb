# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe City, type: :model do
  describe "Associations" do
    it { is_expected.to belong_to(:state).optional(true) }
    it { is_expected.to have_many(:units) }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end
