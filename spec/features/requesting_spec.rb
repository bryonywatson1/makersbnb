feature 'Requesting a space' do

  scenario 'user can get to request screen' do
    add_space
    click_button('View space')
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
  end

  scenario 'user can request to book a space' do
    expect{send_request}.to change(Request, :count).by(1)
  end

  scenario 'user can see requests that they have made' do
   send_request
   expect(page).to have_content("Requests I've made")
   expect(page).to have_content("Host: example@email.com")
   expect(page).to have_content("London house")
   expect(page).to have_content("2016-12-13")
   expect(page).to have_content("Status: Not confirmed")
 end

 scenario 'once a users request has been confirmed that date is no longer available' do
   send_request
   click_button('Sign out')
   sign_in(email: "example@email.com", password: "1234")
   click_button('Requests')
   click_button('Confirm')
   visit '/spaces'
   fill_in :filter_date, with: "16/12/14"
   expect(page).not_to have_content('London house')
end

end
