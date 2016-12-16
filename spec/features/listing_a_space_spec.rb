feature 'Listing a space' do

  scenario 'user can add a new space with a name' do
    add_space
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
    expect(page).to have_content('Owner: example@email.com')
  end

  scenario 'user cannot see spaces with no available dates' do
    add_space(name: 'London house', description: 'Test description', price: '100', available_from: '16/12/13', available_to: '16/12/13')
    click_button('View space')
    fill_in :requested_date, with: "16/12/13"
    click_button('Request to book')
    visit '/requests'
    click_button 'Confirm'
    visit '/spaces'
    expect(page).not_to have_content('London house')
  end
end
