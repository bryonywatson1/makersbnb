describe User do

  let!(:user) { User.create(email: "example@email.com",
                            password: "1234",
                            password_confirmation: "1234") }

  it "authenticates when given a valid email address and password" do
    authenticated_user = User.authenticate("example@email.com", "1234")
    expect(authenticated_user).to eq user
  end
  it "should not add the user whose email address is already exist" do
    another_user = User.create(email: "example@email.com",
                              password: "4321",
                              password_confirmation: "4321")
    authenticated_user = User.authenticate("example@email.com", "4321")
    expect(authenticated_user).to eq nil
  end

end
