# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/contact/contact_email
  def contact_email
    ContactMailer.contact_email
  end
end
