require "rails_helper"

# Specs in this file have access to a helper object that includes
# the SellersHelper. For example:
#
# describe SellersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SellersHelper, type: :helper do
  describe "#seller_fullname" do
    it "returns the value of seller_fullname method" do
      expect(helper.seller_fullname(create(:seller))).to eql("Alejandro Gacuma De guzman")
    end
  end
end
