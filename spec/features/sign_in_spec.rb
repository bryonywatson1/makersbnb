feature "User sign in" do
  before do
    User.create(email: "example@email.com", password: "1234", password_confirmation: "1234")
  end

  scenario "with correct credentials" do
    sign_in(email: "example@email.com", password: "1234")
    expect(page).to have_content "Spaces"
  end

  scenario "with incorrect credentials" do
    sign_in(email: "example@email.com", password: "5678")
    expect(page).to have_content "The email or password is incorrect"
  end
end
