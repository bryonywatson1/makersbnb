describe AvailableDate do

  let!(:user) { User.create(email: "example@email.com",
                            password: "1234",
                            password_confirmation: "1234") }

  it "Available date increases by 1" do
    add_space
    expect(AvailableDate.count).to eq 2
  end

end
