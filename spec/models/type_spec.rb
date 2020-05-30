# == Schema Information
#
# Table name: types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Type, type: :model do
  describe "Associations" do
    it { is_expected.to have_many(:units) }
  end
end
