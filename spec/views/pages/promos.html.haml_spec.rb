require "rails_helper"

RSpec.describe "pages/promos.html.haml", type: :view do
  it "displays promos page correctly" do
    assign(:promos, Promo.all)
    assign(:available_locations, Unit.pluck(:city_id).uniq)

    render

    rendered.should match(/LIST OF PROJECTS/)
  end
end
