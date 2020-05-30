# == Schema Information
#
# Table name: carousels
#
#  id         :bigint           not null, primary key
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :carousel do
    image { File.open("app/assets/images/townhouse-1.jpg") }
  end
end
