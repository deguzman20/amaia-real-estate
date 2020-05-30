require "rails_helper"

RSpec.describe "routes to the contact controller", type: :routing do
  it "route to new contact" do
    expect(get: new_contact_path)
      .to route_to(controller: "contact", action: "new")
  end

  it "route to create contact" do
    expect(get: contact_path)
      .to route_to(controller: "contact", action: "create")
  end
end
