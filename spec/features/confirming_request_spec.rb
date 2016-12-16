feature 'Confirming a request' do

    scenario 'viewing requests I have received' do
      owner_receives_a_request
      expect(page).to have_content("Requests I've received")
      expect(page).to have_content("London house")
      expect(page).to have_content("2016-12-13")
      expect(page).to have_content("STATUS: Not confirmed")
    end

    scenario "owner can confirm the request" do
      owner_receives_a_request
      click_button "Confirm"
      expect(page.current_path).to eq "/requests"
      expect(page).to have_content "STATUS: Confirmed"
    end

    scenario "user has not received a request" do
      User.create(email: "test@email.com", password: "1234", password_confirmation: "1234")
      sign_in(email: "test@email.com", password: "1234")
      click_link "Requests"
      expect(page).not_to have_selector(:link_or_button, 'Confirm')
    end

    scenario "confirmation changes other requests to be denied" do
      owner_receives_2_requests
      first(:button, 'Confirm').click
      expect(page).to have_content "STATUS: Denied"
    end

    scenario "once the request is confirmed, confirm button should be disappeared" do
      owner_receives_a_request
      click_button "Confirm"
      expect(page).not_to have_content("Confirm&nbsp;")
    end

end
