def sign_up(email: "example@email.com", password: "1234", password_confirmation: "1234")
  visit "/users/new"
  expect(page.status_code).to eq(200)
  fill_in "email", with: email
  fill_in "password", with: password
  fill_in "password_confirmation", with: password_confirmation
  click_button "Sign up"
end

def list_space(name: 'London house', description: 'Test description', price: '100')
  visit '/spaces'
  click_button('List a space')
  fill_in :name, with: name
  fill_in :description, with: description
  fill_in :price, with: price
  click_button('List my space')
end
