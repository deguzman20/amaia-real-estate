# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  context "when authenticable" do
    it "is database authenticable" do
      expect(user).to be_valid_password("password123")
    end
  end

  context "when un-authenticable" do
    it "is database un-authenticable" do
      expect(user).not_to be_valid_password("password1234")
    end
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
  end
end
