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
class CityUnit < ApplicationRecord
  # belongs_to :city, optional: true
  # belongs_to :unit, optional: true
end
