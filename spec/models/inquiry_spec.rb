# == Schema Information
#
# Table name: inquiries
#
#  id             :bigint           not null, primary key
#  guest_name     :string(255)
#  address        :string(255)
#  contact_number :string(255)
#  email          :string(255)
#  unit_id        :integer
#  message        :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "rails_helper"

RSpec.describe Inquiry, type: :model do
  describe "Associations" do
    it { is_expected.to belong_to(:unit).optional(true) }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:guest_name) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:contact_number) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:unit_id) }
    it { is_expected.to validate_presence_of(:message) }
  end
end
