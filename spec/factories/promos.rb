# == Schema Information
#
# Table name: promos
#
#  id         :bigint           not null, primary key
#  unit_id    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :promo do
    name { "MyString" }
    image { "MyString" }
  end
end
