require "rails_helper"

RSpec.describe ContactController, type: :controller do
  describe "GET #new" do
    let(:units) { Unit.all }
    let(:inquiry) { Inquiry.new }

    it "check the values of instance method" do
      get :new
      expect(assigns(:units)).to eq(units)
    end
  end

  describe "GET #create" do
    let(:inquiry_form) do
      InquiryForm.new({ "guest_name" => "alejandro",
                        "email" => "alejandrogacumadeguzman@gmail.com",
                        "contact_number" => "09495939582",
                        "address" => "sdfjhsjfdh",
                        "unit_id" => "1",
                        "message" => "sjdhsjd" })
    end

    it "check the function for creating inquiry" do
      get :create
      expect(inquiry_form.save).to eq(true)
    end
  end
end
