feature 'Confirming a request' do
  before do
    send_request
    sign_out
    sign_in(email: "example@email.com", password: "1234")
    click_button "Requests"
  end

  scenario 'viewing requests I have received' do
    expect(page).to have_content("Requests I've received")
    expect(page).to have_content("London house")
    expect(page).to have_content("13/12/16")
    expect(page).to have_content("Status: Not confirmed")
  end
  #
  # scenario "owner can confirm the request" do
  #   click_button "Confirm"
  #   expect(page.current_path).to eq "/requests"
  #   expect(page).to have_content "Status: Confirmed"
  # end

end
