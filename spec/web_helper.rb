def sign_up(email: "example@email.com", password: "1234", password_confirmation: "1234")
  visit "/users/new"
  expect(page.status_code).to eq(200)
  fill_in "email", with: email
  fill_in "password", with: password
  fill_in "password_confirmation", with: password_confirmation
  click_button "Sign up"
end

def add_space(name: 'London house', description: 'Test description', price: '100', available_from: '16/12/13', available_to: '16/12/14')
  User.create(email: "example@email.com", password: "1234", password_confirmation: "1234")
  sign_in(email: "example@email.com", password: "1234")
  click_button('Add a space')
  fill_in :name, with: name
  fill_in :description, with: description
  fill_in :price, with: price
  fill_in :available_from, with: available_from
  fill_in :available_to, with: available_to
  click_button('Add space')
end

def send_request
  add_space
  click_button('Sign out')
  User.create(email: "test@email.com", password: "1234", password_confirmation: "1234")
  sign_in(email: "test@email.com", password: "1234")
  click_button('View space')
  click_button('Request to book')
end
