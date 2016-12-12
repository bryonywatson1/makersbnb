describe User do

  let!(:user) { User.create(email: "example@email.com",
                            password: "1234",
                            password_confirmation: "1234") }

  it "authenticates when given a valid email address and password" do
    authenticated_user = User.authenticate("example@email.com", "1234")
    expect(authenticated_user).to eq user
  end

end
