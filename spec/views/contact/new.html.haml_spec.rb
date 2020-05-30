require "rails_helper"

RSpec.describe "contact/new.html.haml", type: :view do
  it "displays contact page correctly" do
    assign(:units, Unit.all)

    render

    rendered.should match(/Contact information/)
    # rendered.should match(/(+63) 916-928-5197/)
    # rendered.should match(/(+63) 927-955-6616/)
    rendered.should match(/sales@amaia.com.ph/)
  end
end
