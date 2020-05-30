class ContactMailer < ApplicationMailer
  default to: "to@example.org"

  def contact_email
    @inquiry = params[:inquiry]
    mail(from: @inquiry.email, subject: "Contact email")
  end
end
