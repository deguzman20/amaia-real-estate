require "rails_helper"

RSpec.describe "Contacts", type: :feature do
  context "create new inquiry" do
    it "is successful", js: true do
      visit new_contact_path

      within("form") do
        fill_in "Guest name", with: "Andy"
        fill_in "Email", with: "alejandrogacumadeguzman@gmail.com"
        fill_in "Contact number", with: "09495939582"
        fill_in "Address", with: "695 libis baesa caloocan city"
        fill_in "Message...", with: "Sample message inquiry"
        click_button "Send"
      end

      # expect(page).to have_content("Your inquiry was successfuly send")
    end

    it "is failed", js: true do
      visit new_contact_path

      within("form") do
        fill_in "Guest name", with: ""
        fill_in "Email", with: ""
        fill_in "Contact number", with: ""
        fill_in "Address", with: ""
        fill_in "Message...", with: ""
      end

      click_button "Send"

      expect(page).to have_content("Please enter your guest name")
      expect(page).to have_content("Please enter your email")
      expect(page).to have_content("Please enter your mobile number")
      expect(page).to have_content("Please enter your address")
      expect(page).to have_content("Please enter your message")
      expect(page).to have_content("Please select unit")
    end

    it "invalid email and mobile number", js: true do
      visit new_contact_path

      within("form") do
        fill_in "Guest name", with: "andy"
        fill_in "Email", with: "andy"
        fill_in "Contact number", with: "094959395"
        fill_in "Address", with: "libis baesa caloocan"
        fill_in "Message...", with: "Testing"
      end

      click_button "Send"

      expect(page).to have_content("Please enter a valid email address.")
      expect(page).to have_content("Invalid format.")
    end
  end
end
