class InquiryForm
  include Virtus.model
  include ActiveModel::Model

  attribute :guest_name, String
  attribute :address, String
  attribute :contact_number, String
  attribute :email, String
  attribute :unit_id, Integer
  attribute :message, String

  def initialize(attr = {})
    return if attr.nil?

    personal_info_params(attr)
    inquiry_params(attr)
  end

  def save
    if valid?
      send_inquiry
      true
    else
      false
    end
  end

  private

    def personal_info_params(attr = {})
      self[:guest_name] = attr["guest_name"] || ""
      self[:address] = attr["address"] || ""
      self[:contact_number] = attr["contact_number"] || ""
      self[:email] = attr["email"] || ""
    end

    def inquiry_params(attr = {})
      self[:unit_id] = attr["unit_id"] || 1
      self[:message] = attr["message"] || ""
    end

    def send_inquiry
      Inquiry.create(guest_name: self[:guest_name], address: self[:address],
                     contact_number: self[:contact_number], email: self[:email],
                     unit_id: self[:unit_id], message: self[:message])
    end
end
