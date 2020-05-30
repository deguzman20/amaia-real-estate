# == Schema Information
#
# Table name: unit_types
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UnitType < ApplicationRecord
  has_many :units, dependent: :destroy
end
