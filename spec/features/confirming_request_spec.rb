feature 'Confirming a request' do
  before do
    send_request
    sign_out
    sign_in(email: "example@email.com", password: "1234")
  end

  scenario 'viewing requests I have received' do
    click_button "Requests"
    expect(page).to have_content("Requests I've received")
  end

end
