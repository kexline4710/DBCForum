require 'spec_helper'

feature "the user profile edit process" do
  let(:user) { FactoryGirl.create(:user) }
  let(:new_name)  { "new goo" }
  let(:new_email)  { "new@goo.com" }

  scenario "change user information" do
    visit edit_user_path(user)
    fill_in "Name", with: new_name
    fill_in "Email", with: new_email
    fill_in "About", with: "about"
    click_button "Update User"
    visit user_path(user)
    expect(page).to have_text(new_name)
    expect(page).to have_text(new_email)
  end
end
