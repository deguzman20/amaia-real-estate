require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  subject(:subj) { described_class.new }

  let(:city) { create(:city) }
  let(:unit) { create(:unit) }

  it "confirms an object can respond to a method with arguments" do
    expect(subj).to respond_to(:location).with(1).arguments
    expect(subj).to respond_to(:units).with(1).arguments
  end

  context "not to be nil" do
    it "invoke location method" do
      expect(subj.location(city.id)).to eq(city.name.upcase)
    end

    it "invoke units method" do
      expect(subj.units(unit.id)).not_to be_nil
    end
  end
end
