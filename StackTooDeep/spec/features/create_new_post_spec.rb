require "rails_helper"
feature "Question Management" do
  scenario "user creates a new question" do
    visit root_path
    fill_in "Question", :with => "How do I vertical build a feature slice?"
    click_button "Ask Question"
    expect(page).to have_content("How do I vertical build a feature slice?")
  end
end