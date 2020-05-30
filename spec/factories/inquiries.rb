# == Schema Information
#
# Table name: inquiries
#
#  id             :bigint           not null, primary key
#  guest_name     :string(255)
#  address        :string(255)
#  contact_number :string(255)
#  email          :string(255)
#  unit_id        :integer
#  message        :text(65535)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
FactoryBot.define do
  factory :inquiry do
    guest_name { "MyString" }
    address { "MyString" }
    contact_number { "MyString" }
    email { "MyString" }
    unit_id { 1 }
    message { "MyText" }
  end
end
