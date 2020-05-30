require "rails_helper"

RSpec.describe "pages/home.html.haml", type: :view do
  let(:carousel_path) do
                        [
                          Rails.root + "app/assets/images/slide1.jpg",
                          Rails.root + "app/assets/images/slide2.jpg",
                          Rails.root + "app/assets/images/slide3.jpg"
                        ]
                      end

  it "displays home page correctly" do
    assign(:carousels, [
             stub_model(Carousel, image: File.open(carousel_path[0]).to_s),
             stub_model(Carousel, image: File.open(carousel_path[1]).to_s),
             stub_model(Carousel, image: File.open(carousel_path[2]).to_s)
           ])

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
