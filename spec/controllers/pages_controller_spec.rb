require "rails_helper"

RSpec.describe PagesController, type: :controller do
  let(:my_instance) { instance_double(described_class) }
  let(:available_locations) { Unit.pluck(:city_id).uniq }
  let(:unit_types) { UnitType.all }

  describe "GET #home" do
    let(:carousels) { Carousel.all }

    it "check the value of instance variable carousels" do
      get :home
      expect(assigns(:carousels)).to eq(carousels)
    end
  end

  describe "GET #about_us" do
    it "returns http success" do
      get :about_us
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #pre_selling" do
    it "returns http success" do
      get :pre_selling
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #ready_for_occupancy" do
    it "returns http success" do
      get :ready_for_occupancy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #promos" do
    let(:promos) { Promo.all }

    it "check the value of instance variable promos" do
      get :promos
      expect(assigns(:promos)).to eq(promos)
    end
  end

  describe "Checked private method" do
    it "check the value of instance variable of unit_types method" do
      allow(described_class.new).to receive(:unit_types).and_return([unit_types])
    end

    it "check the value of instance variable of available_locations method" do
      allow(described_class.new).to receive(:available_locations).and_return([available_locations])
    end
  end
end
