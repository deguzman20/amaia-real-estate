# == Schema Information
#
# Table name: sellers
#
#  id          :bigint           not null, primary key
#  first_name  :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :seller do
    first_name { "Alejandro" }
    middle_name { "Gacuma" }
    last_name { "De guzman" }
    image { File.open("app/assets/images/condo-8.jpg") }
  end
end
