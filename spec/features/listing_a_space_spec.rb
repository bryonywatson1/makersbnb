feature 'Listing a space' do

  scenario 'user can add a new space with a name' do
    add_space
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
    expect(page).to have_content('Owner: example@email.com')
    expect(page).to have_content('Available from: 2016-12-13 to 2016-12-14')
  end
end
