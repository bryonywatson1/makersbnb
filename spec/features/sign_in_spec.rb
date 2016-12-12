feature "User Sign in" do
  before do
    sign_up(email: "example@email.com", password: "1234", password_confirmation: "1234")
  end

  scenario "with correct credentials" do
    sign_in(email: "example@email.com", password: "1234")
    expect(page).to have_content "Spaces"
  end
end
