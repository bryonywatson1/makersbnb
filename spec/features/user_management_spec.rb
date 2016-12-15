feature "User sign up" do

  scenario "I can sign up as a new user" do
    expect{ sign_up }.to change(User, :count).by(1)
    expect(User.first.email).to eq("example@email.com")
  end

  scenario "I can not sign up with the existing email address" do
    sign_up(email: "example@email.com", password: "1234", password_confirmation: "1234")
    sign_up(email: "example@email.com", password: "hello", password_confirmation: "hello")
    expect{ sign_up }.to change(User, :count).by(0)
  end

end
