# == Schema Information
#
# Table name: states
#
#  id                   :bigint           not null, primary key
#  region               :string(255)
#  regional_designation :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class State < ApplicationRecord
  has_many :cities, dependent: :destroy

  validates :region, :regional_designation, presence: true
end
