require "rails_helper"

RSpec.describe "pages/about_us.html.haml", type: :view do
  it "displays about page correctly" do
    assign(:available_locations, Unit.pluck(:city_id).uniq)

    render

    rendered.should match(/LIST OF PROJECTS/)
    rendered.should match(/Amaia Land Corporation/)
    rendered.should match(/Amaia Land - Company Profile/)
    rendered.should match(/Amaia Land - Mission/)
    rendered.should match(/Amaia Land - Vision/)
  end
end
