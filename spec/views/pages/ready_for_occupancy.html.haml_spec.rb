require "rails_helper"

RSpec.describe "pages/ready_for_occupancy.html.haml", type: :view do
  it "displays ready for occupancy page correctly" do
    assign(:unit_types, [
             stub_model(UnitType, name: "Condominium"),
             stub_model(UnitType, name: "House and Lot"),
             stub_model(UnitType, name: "Townhouse")
           ])

    render

    rendered.should match(/Condominium/)
    rendered.should match(/House and Lot/)
    rendered.should match(/Townhouse/)
  end
end
