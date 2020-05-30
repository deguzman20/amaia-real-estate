# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class City < ApplicationRecord
  belongs_to :state, optional: true
  has_many :units, dependent: :destroy

  validates :name, presence: true

  def self.upcase_city(id)
    find(id).name.upcase if id.present?
  end
end
