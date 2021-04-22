require "rails_helper"

feature "User completes todo" do
  scenario "succesfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "submit"

    click_on "Mark complete"

    expect(page).to have_css '.todos li.completed', text: "Buy milk"
  end
end