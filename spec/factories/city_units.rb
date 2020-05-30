# == Schema Information
#
# Table name: city_units
#
#  id         :bigint           not null, primary key
#  city_id    :integer
#  unit_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :city_unit do
    city_id { 1 }
    unitt_id { 1 }
  end
end
