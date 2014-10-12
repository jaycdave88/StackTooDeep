require "rails_helper"

feature "Question Management" do
  scenario "user creates a new question" do
    visit root_path
    fill_in "Title", :with => "How do I vertical build a feature slice?"
    fill_in "Body", :with => "I'm in DBC and I don't get the concept because I can't think this way."
    click_button "Create Question"
    expect(page).to have_content("How do I vertical build a feature slice?")
  end
end