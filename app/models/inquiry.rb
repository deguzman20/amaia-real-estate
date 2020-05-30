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
class Inquiry < ApplicationRecord
  belongs_to :unit, optional: true

  validates :guest_name, :address, :contact_number, :email,
            :unit_id, :message, presence: true

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
end
