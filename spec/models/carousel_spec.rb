# == Schema Information
#
# Table name: carousels
#
#  id         :bigint           not null, primary key
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe Carousel, type: :model do
  describe "Validations" do
    it { is_expected.to validate_presence_of(:image) }
  end
end
