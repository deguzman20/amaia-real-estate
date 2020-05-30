# == Schema Information
#
# Table name: units
#
#  id                       :bigint           not null, primary key
#  specific_location        :string(255)
#  type_id                  :integer
#  city_id                  :integer
#  price_from               :string(255)
#  price_to                 :string(255)
#  image                    :string(255)
#  unit_size_from           :string(255)
#  unit_size_to             :string(255)
#  project_concept          :text(65535)
#  location_and_vicinity    :text(65535)
#  amenities_and_facilities :text(65535)
#  model_unit               :text(65535)
#  unit_type_id             :integer
#  pre_selling              :boolean
#  ready_for_occupancy      :boolean
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  site_development_plan    :string(255)
#  units_and_floor_plan     :string(255)
#
FactoryBot.define do
  factory :unit do
    specific_location { "MyString" }
    price_from { 1_700_000 }
    price_to { 3_700_000 }
    unit_size_from { 123 }
    unit_size_to { 321 }
    project_concept { "MyText" }
    location_and_vicinity { "MyText" }
    amenities_and_facilities { "MyText" }
    model_unit { "MyText" }
    city_id { 1 }
    unit_type_id { rand(1..3) }
    image { File.open("app/assets/images/condo-8.jpg") }
    pre_selling { false }
    ready_for_occupancy { false }
    site_development_plan { "<h1>Site Development</h1>" }
    units_and_floor_plan { "<h1>Units and floor</h1>" }
    type_id { 1 }
  end
end
