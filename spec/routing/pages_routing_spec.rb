require "rails_helper"

RSpec.describe "routes to the pages controller", type: :routing do
  it "route to home page" do
    expect(get: root_path).to route_to(controller: "pages", action: "home")
  end

  it "route to about us page" do
    expect(get: about_path).to route_to(controller: "pages", action: "about_us")
  end

  it "route to promos page" do
    expect(get: promos_path).to route_to(controller: "pages", action: "promos")
  end

  it "route to ready for occupancy page" do
    expect(get: ready_for_occupancy_path).to route_to(controller: "pages", action: "ready_for_occupancy")
  end

  it "route to pre selling page" do
    expect(get: pre_selling_path).to route_to(controller: "pages", action: "pre_selling")
  end

  it "route to single unit page" do
    expect(get: unit_path(1)).to route_to(controller: "pages", action: "unit", id: "1")
  end
end
