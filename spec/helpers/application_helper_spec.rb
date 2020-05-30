require "spec_helper"

describe ApplicationHelper do
  describe "#number_to_currency_peso" do
    it "returns the value of number_to_currency_peso method" do
      expect(helper.number_to_currency_peso(1_000_000)).to eql("₱1,000,000")
    end
  end
end
