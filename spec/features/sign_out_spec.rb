feature "User sign out" do
  before do
    User.create(email: "example@email.com", password: "1234", password_confirmation: "1234")
  end

  scenario "while being signed in" do
    sign_in(email: "example@email.com", password: "1234")
    click_button "Sign out"
    expect(page).to have_content("Goodbye!")
    expect(page).not_to have_content("Sign out")
  end
end
